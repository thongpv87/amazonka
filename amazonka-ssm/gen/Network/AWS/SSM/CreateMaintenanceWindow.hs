{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.CreateMaintenanceWindow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new maintenance window.
module Network.AWS.SSM.CreateMaintenanceWindow
  ( -- * Creating a Request
    createMaintenanceWindow,
    CreateMaintenanceWindow,

    -- * Request Lenses
    cmwStartDate,
    cmwScheduleOffset,
    cmwTags,
    cmwDescription,
    cmwScheduleTimezone,
    cmwEndDate,
    cmwClientToken,
    cmwName,
    cmwSchedule,
    cmwDuration,
    cmwCutoff,
    cmwAllowUnassociatedTargets,

    -- * Destructuring the Response
    createMaintenanceWindowResponse,
    CreateMaintenanceWindowResponse,

    -- * Response Lenses
    cmwrrsWindowId,
    cmwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'createMaintenanceWindow' smart constructor.
data CreateMaintenanceWindow = CreateMaintenanceWindow'
  { _cmwStartDate ::
      !(Maybe Text),
    _cmwScheduleOffset ::
      !(Maybe Nat),
    _cmwTags ::
      !(Maybe [Tag]),
    _cmwDescription ::
      !( Maybe
           (Sensitive Text)
       ),
    _cmwScheduleTimezone ::
      !(Maybe Text),
    _cmwEndDate ::
      !(Maybe Text),
    _cmwClientToken ::
      !(Maybe Text),
    _cmwName :: !Text,
    _cmwSchedule :: !Text,
    _cmwDuration :: !Nat,
    _cmwCutoff :: !Nat,
    _cmwAllowUnassociatedTargets ::
      !Bool
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateMaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmwStartDate' - The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become active. StartDate allows you to delay activation of the maintenance window until the specified future date.
--
-- * 'cmwScheduleOffset' - The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. For example, the following cron expression schedules a maintenance window to run on the third Tuesday of every month at 11:30 PM. @cron(30 23 ? * TUE#3 *)@  If the schedule offset is @2@ , the maintenance window won't run until two days later.
--
-- * 'cmwTags' - Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a maintenance window to identify the type of tasks it will run, the types of targets, and the environment it will run in. In this case, you could specify the following key name/value pairs:     * @Key=TaskType,Value=AgentUpdate@      * @Key=OS,Value=Windows@      * @Key=Environment,Value=Production@
--
-- * 'cmwDescription' - An optional description for the maintenance window. We recommend specifying a description to help you organize your maintenance windows.
--
-- * 'cmwScheduleTimezone' - The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
--
-- * 'cmwEndDate' - The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.
--
-- * 'cmwClientToken' - User-provided idempotency token.
--
-- * 'cmwName' - The name of the maintenance window.
--
-- * 'cmwSchedule' - The schedule of the maintenance window in the form of a cron or rate expression.
--
-- * 'cmwDuration' - The duration of the maintenance window in hours.
--
-- * 'cmwCutoff' - The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
--
-- * 'cmwAllowUnassociatedTargets' - Enables a maintenance window task to run on managed instances, even if you have not registered those instances as targets. If enabled, then you must specify the unregistered instances (by instance ID) when you register a task with the maintenance window. If you don't enable this option, then you must specify previously-registered targets when you register a task with the maintenance window.
createMaintenanceWindow ::
  -- | 'cmwName'
  Text ->
  -- | 'cmwSchedule'
  Text ->
  -- | 'cmwDuration'
  Natural ->
  -- | 'cmwCutoff'
  Natural ->
  -- | 'cmwAllowUnassociatedTargets'
  Bool ->
  CreateMaintenanceWindow
createMaintenanceWindow
  pName_
  pSchedule_
  pDuration_
  pCutoff_
  pAllowUnassociatedTargets_ =
    CreateMaintenanceWindow'
      { _cmwStartDate = Nothing,
        _cmwScheduleOffset = Nothing,
        _cmwTags = Nothing,
        _cmwDescription = Nothing,
        _cmwScheduleTimezone = Nothing,
        _cmwEndDate = Nothing,
        _cmwClientToken = Nothing,
        _cmwName = pName_,
        _cmwSchedule = pSchedule_,
        _cmwDuration = _Nat # pDuration_,
        _cmwCutoff = _Nat # pCutoff_,
        _cmwAllowUnassociatedTargets =
          pAllowUnassociatedTargets_
      }

-- | The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become active. StartDate allows you to delay activation of the maintenance window until the specified future date.
cmwStartDate :: Lens' CreateMaintenanceWindow (Maybe Text)
cmwStartDate = lens _cmwStartDate (\s a -> s {_cmwStartDate = a})

-- | The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. For example, the following cron expression schedules a maintenance window to run on the third Tuesday of every month at 11:30 PM. @cron(30 23 ? * TUE#3 *)@  If the schedule offset is @2@ , the maintenance window won't run until two days later.
cmwScheduleOffset :: Lens' CreateMaintenanceWindow (Maybe Natural)
cmwScheduleOffset = lens _cmwScheduleOffset (\s a -> s {_cmwScheduleOffset = a}) . mapping _Nat

-- | Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a maintenance window to identify the type of tasks it will run, the types of targets, and the environment it will run in. In this case, you could specify the following key name/value pairs:     * @Key=TaskType,Value=AgentUpdate@      * @Key=OS,Value=Windows@      * @Key=Environment,Value=Production@
cmwTags :: Lens' CreateMaintenanceWindow [Tag]
cmwTags = lens _cmwTags (\s a -> s {_cmwTags = a}) . _Default . _Coerce

-- | An optional description for the maintenance window. We recommend specifying a description to help you organize your maintenance windows.
cmwDescription :: Lens' CreateMaintenanceWindow (Maybe Text)
cmwDescription = lens _cmwDescription (\s a -> s {_cmwDescription = a}) . mapping _Sensitive

-- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
cmwScheduleTimezone :: Lens' CreateMaintenanceWindow (Maybe Text)
cmwScheduleTimezone = lens _cmwScheduleTimezone (\s a -> s {_cmwScheduleTimezone = a})

-- | The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.
cmwEndDate :: Lens' CreateMaintenanceWindow (Maybe Text)
cmwEndDate = lens _cmwEndDate (\s a -> s {_cmwEndDate = a})

-- | User-provided idempotency token.
cmwClientToken :: Lens' CreateMaintenanceWindow (Maybe Text)
cmwClientToken = lens _cmwClientToken (\s a -> s {_cmwClientToken = a})

-- | The name of the maintenance window.
cmwName :: Lens' CreateMaintenanceWindow Text
cmwName = lens _cmwName (\s a -> s {_cmwName = a})

-- | The schedule of the maintenance window in the form of a cron or rate expression.
cmwSchedule :: Lens' CreateMaintenanceWindow Text
cmwSchedule = lens _cmwSchedule (\s a -> s {_cmwSchedule = a})

-- | The duration of the maintenance window in hours.
cmwDuration :: Lens' CreateMaintenanceWindow Natural
cmwDuration = lens _cmwDuration (\s a -> s {_cmwDuration = a}) . _Nat

-- | The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
cmwCutoff :: Lens' CreateMaintenanceWindow Natural
cmwCutoff = lens _cmwCutoff (\s a -> s {_cmwCutoff = a}) . _Nat

-- | Enables a maintenance window task to run on managed instances, even if you have not registered those instances as targets. If enabled, then you must specify the unregistered instances (by instance ID) when you register a task with the maintenance window. If you don't enable this option, then you must specify previously-registered targets when you register a task with the maintenance window.
cmwAllowUnassociatedTargets :: Lens' CreateMaintenanceWindow Bool
cmwAllowUnassociatedTargets = lens _cmwAllowUnassociatedTargets (\s a -> s {_cmwAllowUnassociatedTargets = a})

instance AWSRequest CreateMaintenanceWindow where
  type
    Rs CreateMaintenanceWindow =
      CreateMaintenanceWindowResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          CreateMaintenanceWindowResponse'
            <$> (x .?> "WindowId") <*> (pure (fromEnum s))
      )

instance Hashable CreateMaintenanceWindow

instance NFData CreateMaintenanceWindow

instance ToHeaders CreateMaintenanceWindow where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.CreateMaintenanceWindow" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateMaintenanceWindow where
  toJSON CreateMaintenanceWindow' {..} =
    object
      ( catMaybes
          [ ("StartDate" .=) <$> _cmwStartDate,
            ("ScheduleOffset" .=) <$> _cmwScheduleOffset,
            ("Tags" .=) <$> _cmwTags,
            ("Description" .=) <$> _cmwDescription,
            ("ScheduleTimezone" .=) <$> _cmwScheduleTimezone,
            ("EndDate" .=) <$> _cmwEndDate,
            ("ClientToken" .=) <$> _cmwClientToken,
            Just ("Name" .= _cmwName),
            Just ("Schedule" .= _cmwSchedule),
            Just ("Duration" .= _cmwDuration),
            Just ("Cutoff" .= _cmwCutoff),
            Just
              ( "AllowUnassociatedTargets"
                  .= _cmwAllowUnassociatedTargets
              )
          ]
      )

instance ToPath CreateMaintenanceWindow where
  toPath = const "/"

instance ToQuery CreateMaintenanceWindow where
  toQuery = const mempty

-- | /See:/ 'createMaintenanceWindowResponse' smart constructor.
data CreateMaintenanceWindowResponse = CreateMaintenanceWindowResponse'
  { _cmwrrsWindowId ::
      !( Maybe
           Text
       ),
    _cmwrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateMaintenanceWindowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmwrrsWindowId' - The ID of the created maintenance window.
--
-- * 'cmwrrsResponseStatus' - -- | The response status code.
createMaintenanceWindowResponse ::
  -- | 'cmwrrsResponseStatus'
  Int ->
  CreateMaintenanceWindowResponse
createMaintenanceWindowResponse pResponseStatus_ =
  CreateMaintenanceWindowResponse'
    { _cmwrrsWindowId =
        Nothing,
      _cmwrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the created maintenance window.
cmwrrsWindowId :: Lens' CreateMaintenanceWindowResponse (Maybe Text)
cmwrrsWindowId = lens _cmwrrsWindowId (\s a -> s {_cmwrrsWindowId = a})

-- | -- | The response status code.
cmwrrsResponseStatus :: Lens' CreateMaintenanceWindowResponse Int
cmwrrsResponseStatus = lens _cmwrrsResponseStatus (\s a -> s {_cmwrrsResponseStatus = a})

instance NFData CreateMaintenanceWindowResponse
