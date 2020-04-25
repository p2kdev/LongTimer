@interface MTATimerIntervalPickerView
  - (long long)pickerView:(id)arg1 numberOfRowsInComponent:(long long)arg2;
@end

%hook MTATimerIntervalPickerView

  -(long long)pickerView:(id)arg1 numberOfRowsInComponent:(long long)arg2
  {
    // NSString *msg = [NSString stringWithFormat:@"arg1 - %@",arg1];
    // UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"LongTimer" message:msg delegate:[[UIApplication sharedApplication] keyWindow].rootViewController cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    // [alertView show];
    // [alertView release];
    //
    // msg = [NSString stringWithFormat:@"arg2 - %lld",arg2];
    // alertView = [[UIAlertView alloc] initWithTitle:@"LongTimer" message:msg delegate:[[UIApplication sharedApplication] keyWindow].rootViewController cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    // [alertView show];
    // [alertView release];
    if (arg2 == 0)
    {
      return 1000;
    }
    return %orig;
  }

%end

















// @interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

//
// @end
// //
// @interface MTAAlarmTableViewController
//   @property(atomic) NSInteger *hour;
// - (void)showEditViewForRow:(long long)arg1;
// @end


// %hook MTAAlarmEditViewController
//
// - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//
// %end




// %hook MTAAlarmTableViewController

// -(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//     //UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//     [self showEditViewForRow:indexPath];
//     //NSString *cellText = cell.textLabel.text;
// }
// - (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2
// {
//   NSString *msg = [NSString stringWithFormat:@"Inside didSelectRowAtIndexPath arg2 - %@ ", arg2];
//   UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"didSelectRowAtIndexPath" message:msg delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//   [alertView show];
//   [alertView release];
//   %orig;
//   //[self showEditViewForRow:(long long)arg2];
// }


// static BOOL editAlarms_shouldIgnoreTaps;
//
// %new - (void)editAlarmsButtonTapped:(UIButton *)sender {
//     UITableView *tableView = MSHookIvar<UITableView *>(self, "_tableView");
//
//     if (editAlarms_shouldIgnoreTaps) {
//         editAlarms_shouldIgnoreTaps = NO;
//     }
//
//     else {
//     	UIView *tappedCell = sender.superview;
//     	while (![tappedCell isKindOfClass:[UITableViewCell class]]) {
//     		tappedCell = tappedCell.superview;
//     	}
//
//         [self showEditViewForRow:[tableView indexPathForCell:(UITableViewCell *)tappedCell].row];
//     }
// }
//
// %new - (void)editAlarmsButtonCancelled:(UIButton *)sender {
//     editAlarms_shouldIgnoreTaps = YES;
// }
//
// - (id)tableView:(id)arg1 cellForRowAtIndexPath:(NSIndexPath *)arg2 {
//     UITableViewCell *cell = %orig;
//
//     CGRect editAlarmsButtonFrame = cell.frame;
//     editAlarmsButtonFrame.size = cell.size;
//
//     UIButton *editAlarmsButton = [UIButton buttonWithType:UIButtonTypeCustom];
//     editAlarmsButton.frame = editAlarmsButtonFrame;
//     editAlarmsButton.backgroundColor = [UIColor clearColor];
//     [editAlarmsButton addTarget:self action:@selector(editAlarmsButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
//     [editAlarmsButton addTarget:self action:@selector(editAlarmsButtonCancelled:) forControlEvents:UIControlEventTouchDragInside];
//     [cell addSubview:editAlarmsButton];
//
//     return cell;
// }
//
// - (UIBarButtonItem *)editButtonItem {
//     return nil;
// }
//
// - (BOOL)tableView:(UITableView *)arg1 canEditRowAtIndexPath:(NSIndexPath *)arg2 {
// 	return YES;
// }
//
// - (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
//     return UITableViewCellEditingStyleDelete;
// }

// }
//
// %end
