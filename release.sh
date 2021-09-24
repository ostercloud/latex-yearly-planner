CURRENT_YEAR=$(date +"%Y")
NEXT_YEAR=$((CURRENT_YEAR+1))

_sn_a5x="cfg/base.yaml,cfg/sn_a5x.base.yaml"
_sn_a5x_lh="cfg/base.yaml,cfg/sn_a5x_lh.base.yaml"

#configurations=("${_sn_a5x},cfg/template_planner_yearly.yaml,cfg/sn_a5x.planner.yaml" "${_sn_a5x_lh},cfg/template_planner_daily_with_cal.yaml,cfg/sn_a5x_lh.planner.daily-with-cal.yaml")

for year in $CURRENT_YEAR $NEXT_YEAR; do
  for cfg in "cfg/base.yaml,cfg/sn_a5x.base.yaml,cfg/template_planner_yearly.yaml,cfg/sn_a5x.planner.yaml"; do
    PLANNER_YEAR=${year} CFG="${cfg}" ./single.sh
  done
done