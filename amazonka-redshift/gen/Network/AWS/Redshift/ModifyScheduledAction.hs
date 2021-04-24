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
-- Module      : Network.AWS.Redshift.ModifyScheduledAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a scheduled action.
module Network.AWS.Redshift.ModifyScheduledAction
  ( -- * Creating a Request
    modifyScheduledAction,
    ModifyScheduledAction,

    -- * Request Lenses
    msaTargetAction,
    msaEnable,
    msaIAMRole,
    msaScheduledActionDescription,
    msaStartTime,
    msaEndTime,
    msaSchedule,
    msaScheduledActionName,

    -- * Destructuring the Response
    scheduledAction,
    ScheduledAction,

    -- * Response Lenses
    saTargetAction,
    saNextInvocations,
    saIAMRole,
    saScheduledActionDescription,
    saStartTime,
    saEndTime,
    saState,
    saScheduledActionName,
    saSchedule,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyScheduledAction' smart constructor.
data ModifyScheduledAction = ModifyScheduledAction'
  { _msaTargetAction ::
      !( Maybe
           ScheduledActionType
       ),
    _msaEnable :: !(Maybe Bool),
    _msaIAMRole ::
      !(Maybe Text),
    _msaScheduledActionDescription ::
      !(Maybe Text),
    _msaStartTime ::
      !(Maybe ISO8601),
    _msaEndTime ::
      !(Maybe ISO8601),
    _msaSchedule ::
      !(Maybe Text),
    _msaScheduledActionName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyScheduledAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msaTargetAction' - A modified JSON format of the scheduled action. For more information about this parameter, see 'ScheduledAction' .
--
-- * 'msaEnable' - A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled.
--
-- * 'msaIAMRole' - A different IAM role to assume to run the target action. For more information about this parameter, see 'ScheduledAction' .
--
-- * 'msaScheduledActionDescription' - A modified description of the scheduled action.
--
-- * 'msaStartTime' - A modified start time of the scheduled action. For more information about this parameter, see 'ScheduledAction' .
--
-- * 'msaEndTime' - A modified end time of the scheduled action. For more information about this parameter, see 'ScheduledAction' .
--
-- * 'msaSchedule' - A modified schedule in either @at( )@ or @cron( )@ format. For more information about this parameter, see 'ScheduledAction' .
--
-- * 'msaScheduledActionName' - The name of the scheduled action to modify.
modifyScheduledAction ::
  -- | 'msaScheduledActionName'
  Text ->
  ModifyScheduledAction
modifyScheduledAction pScheduledActionName_ =
  ModifyScheduledAction'
    { _msaTargetAction = Nothing,
      _msaEnable = Nothing,
      _msaIAMRole = Nothing,
      _msaScheduledActionDescription = Nothing,
      _msaStartTime = Nothing,
      _msaEndTime = Nothing,
      _msaSchedule = Nothing,
      _msaScheduledActionName = pScheduledActionName_
    }

-- | A modified JSON format of the scheduled action. For more information about this parameter, see 'ScheduledAction' .
msaTargetAction :: Lens' ModifyScheduledAction (Maybe ScheduledActionType)
msaTargetAction = lens _msaTargetAction (\s a -> s {_msaTargetAction = a})

-- | A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled.
msaEnable :: Lens' ModifyScheduledAction (Maybe Bool)
msaEnable = lens _msaEnable (\s a -> s {_msaEnable = a})

-- | A different IAM role to assume to run the target action. For more information about this parameter, see 'ScheduledAction' .
msaIAMRole :: Lens' ModifyScheduledAction (Maybe Text)
msaIAMRole = lens _msaIAMRole (\s a -> s {_msaIAMRole = a})

-- | A modified description of the scheduled action.
msaScheduledActionDescription :: Lens' ModifyScheduledAction (Maybe Text)
msaScheduledActionDescription = lens _msaScheduledActionDescription (\s a -> s {_msaScheduledActionDescription = a})

-- | A modified start time of the scheduled action. For more information about this parameter, see 'ScheduledAction' .
msaStartTime :: Lens' ModifyScheduledAction (Maybe UTCTime)
msaStartTime = lens _msaStartTime (\s a -> s {_msaStartTime = a}) . mapping _Time

-- | A modified end time of the scheduled action. For more information about this parameter, see 'ScheduledAction' .
msaEndTime :: Lens' ModifyScheduledAction (Maybe UTCTime)
msaEndTime = lens _msaEndTime (\s a -> s {_msaEndTime = a}) . mapping _Time

-- | A modified schedule in either @at( )@ or @cron( )@ format. For more information about this parameter, see 'ScheduledAction' .
msaSchedule :: Lens' ModifyScheduledAction (Maybe Text)
msaSchedule = lens _msaSchedule (\s a -> s {_msaSchedule = a})

-- | The name of the scheduled action to modify.
msaScheduledActionName :: Lens' ModifyScheduledAction Text
msaScheduledActionName = lens _msaScheduledActionName (\s a -> s {_msaScheduledActionName = a})

instance AWSRequest ModifyScheduledAction where
  type Rs ModifyScheduledAction = ScheduledAction
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "ModifyScheduledActionResult"
      (\s h x -> parseXML x)

instance Hashable ModifyScheduledAction

instance NFData ModifyScheduledAction

instance ToHeaders ModifyScheduledAction where
  toHeaders = const mempty

instance ToPath ModifyScheduledAction where
  toPath = const "/"

instance ToQuery ModifyScheduledAction where
  toQuery ModifyScheduledAction' {..} =
    mconcat
      [ "Action" =: ("ModifyScheduledAction" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "TargetAction" =: _msaTargetAction,
        "Enable" =: _msaEnable,
        "IamRole" =: _msaIAMRole,
        "ScheduledActionDescription"
          =: _msaScheduledActionDescription,
        "StartTime" =: _msaStartTime,
        "EndTime" =: _msaEndTime,
        "Schedule" =: _msaSchedule,
        "ScheduledActionName" =: _msaScheduledActionName
      ]
