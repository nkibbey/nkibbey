#!/usr/bin/env bash

STARTYEAR=2000
ENDYEAR=2017
curr_year=${STARTYEAR}

while [ ${curr_year} -le ${ENDYEAR} ]
do
  echo "temp${curr_year} <- refugee_tab %>%"
  echo "select(name, yr_${curr_year}) %>%"
  echo "mutate(num_refugees=yr_${curr_year}, year=${curr_year})"
  echo "temp${curr_year}""$""yr_${curr_year} <- NULL"
  echo ""
  ((curr_year++))
done
