dnl
dnl
define(`COUNT', `$#')dnl
dnl
dnl
define(`GRADE_COLOR',
  `ifelse(
    $1, 1, lightskyblue,
    $1, 2, violetred,
    $1, 3, lightseagreen,
    black)')dnl
dnl
dnl
define(`TD_ICON', 
  `_TD_ICON($1)ifelse(COUNT($@), 1, , `TD_ICON(shift($@))')')dnl
define(`_TD_ICON', `
					<td height="40pt" width="40pt" fixedsize="true"><img src="icon/$1.png" /></td>')dnl
dnl
dnl
define(`stack_foreach',
`_stack_reverse(`$1', `tmp-$1')'dnl
`_stack_reverse(`tmp-$1', `$1', `$2(defn(`$1'))')')dnl
define(`_stack_reverse',
`ifdef(`$1', `pushdef(`$2', defn(`$1'))$3`'popdef(`$1')$0($@)')')dnl
dnl
dnl
define(`CLUSTER_ADD',`dnl
ifdef(`_CLUSTER_FLAG[$2]',,
	`define(`_CLUSTER_FLAG[$2]')pushdef(`_CLUSTER_LIST', `$2')')dnl
pushdef(`_CLUSTER_MEMBER[$2]', $1)dnl
')dnl
dnl
dnl
define(`SCHOOL_ADD',`dnl
ifdef(`_SCHOOL_FLAG[$2]',,
	`define(`_SCHOOL_FLAG[$2]')pushdef(`_SCHOOL_LIST', `$2')')dnl
pushdef(`_SCHOOL_MEMBER[$2]', $1)dnl
')dnl
dnl
dnl
dnl MOB(name, grade, `id1,...', cluster)
dnl
define(`MOB',
`ifelse($5, , , `CLUSTER_ADD($1,$5)')dnl
SCHOOL_ADD($1,$3)dnl
	"$1" [
		color = GRADE_COLOR($2),
		label=<<table border="0">
			<tr><td colspan="COUNT($4)"><b>$1</b></td></tr>
			ifelse(`$4',,,`<tr>TD_ICON($4)
			</tr>')</table>>,
	]')dnl
dnl
dnl
dnl
define(`OUTPUT_CLUSTERS', `stack_foreach(`_CLUSTER_LIST', `_CLUSTER_OUTPUT_SUBGRAPH')')dnl
define(`_CLUSTER_OUTPUT_MEMBER', `
		"$1"')dnl
define(`_CLUSTER_OUTPUT_SUBGRAPH', `
	subgraph cluster_$1 {
		label = "$1"
		style = rounded dnl
stack_foreach(`_CLUSTER_MEMBER[$1]', `_CLUSTER_OUTPUT_MEMBER')
	}')dnl
dnl
dnl
define(`OUTPUT_SCHOOLS', `stack_foreach(`_SCHOOL_LIST', `_SCHOOL_OUTPUT_SUBGRAPH')')dnl
define(`_SCHOOL_OUTPUT_MEMBER', `
		"$1"')dnl
define(`_SCHOOL_OUTPUT_SUBGRAPH', `
	subgraph cluster_$1 {
		label = "_SCHOOL_NAME($1)"
		style = rounded dnl
stack_foreach(`_SCHOOL_MEMBER[$1]', `_SCHOOL_OUTPUT_MEMBER')
	}')dnl
dnl
define(`_SCHOOL_NAME', `ifelse(
	$1, 青, 青藍高校,
	$1, 東, 東雲学院,
	$1, 千, 千歳橋高校,
	$1, 藤, 藤黄学園,
	$1, 紫, 紫苑女学院,
	$1, YG, Y.G. 国際学園)')dnl
dnl
dnl
define(`SS',
  `	"$1" -> "$2" [color=red, label="$3"ifelse(`$4',`',,`, $4')]')dnl
dnl
dnl
define(`HOME',
  `	"$1" -> "$2" [color=blue, label="$3"ifelse(`$4',`',,`, $4')]')dnl
dnl
