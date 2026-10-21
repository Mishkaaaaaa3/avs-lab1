#!/bin/bash
cp claude_monet/chef_office/barinov_report claude_monet/staff_room/shift_order
cp -r claude_monet/kitchen/cold_station claude_monet/staff_room/cold_backup
ln -s ../pantry/missing_products claude_monet/chef_office/product_loss
ln -s claude_monet/kitchen kitchen_work
ln evening_incident claude_monet/kitchen/incident_copy
cat claude_monet/kitchen/hot_station/senya_inventory claude_monet/kitchen/cold_station/fedya_inventory > claude_monet/kitchen/total_inventory
cat claude_monet/staff_room/leva_warning >> evening_incident
mv claude_monet/staff_room/prank_plan claude_monet/chef_office/senya_explanation