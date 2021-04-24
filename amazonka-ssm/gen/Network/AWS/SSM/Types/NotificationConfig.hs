{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.NotificationConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.NotificationConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.NotificationEvent
import Network.AWS.SSM.Types.NotificationType

-- | Configurations for sending notifications.
--
--
--
-- /See:/ 'notificationConfig' smart constructor.
data NotificationConfig = NotificationConfig'
  { _ncNotificationARN ::
      !(Maybe Text),
    _ncNotificationType ::
      !(Maybe NotificationType),
    _ncNotificationEvents ::
      !(Maybe [NotificationEvent])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncNotificationARN' - An Amazon Resource Name (ARN) for an Amazon Simple Notification Service (Amazon SNS) topic. Run Command pushes notifications about command status changes to this topic.
--
-- * 'ncNotificationType' - Command: Receive notification when the status of a command changes. Invocation: For commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes.
--
-- * 'ncNotificationEvents' - The different events for which you can receive notifications. These events include the following: All (events), InProgress, Success, TimedOut, Cancelled, Failed. To learn more about these events, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html Monitoring Systems Manager status changes using Amazon SNS notifications> in the /AWS Systems Manager User Guide/ .
notificationConfig ::
  NotificationConfig
notificationConfig =
  NotificationConfig'
    { _ncNotificationARN = Nothing,
      _ncNotificationType = Nothing,
      _ncNotificationEvents = Nothing
    }

-- | An Amazon Resource Name (ARN) for an Amazon Simple Notification Service (Amazon SNS) topic. Run Command pushes notifications about command status changes to this topic.
ncNotificationARN :: Lens' NotificationConfig (Maybe Text)
ncNotificationARN = lens _ncNotificationARN (\s a -> s {_ncNotificationARN = a})

-- | Command: Receive notification when the status of a command changes. Invocation: For commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes.
ncNotificationType :: Lens' NotificationConfig (Maybe NotificationType)
ncNotificationType = lens _ncNotificationType (\s a -> s {_ncNotificationType = a})

-- | The different events for which you can receive notifications. These events include the following: All (events), InProgress, Success, TimedOut, Cancelled, Failed. To learn more about these events, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html Monitoring Systems Manager status changes using Amazon SNS notifications> in the /AWS Systems Manager User Guide/ .
ncNotificationEvents :: Lens' NotificationConfig [NotificationEvent]
ncNotificationEvents = lens _ncNotificationEvents (\s a -> s {_ncNotificationEvents = a}) . _Default . _Coerce

instance FromJSON NotificationConfig where
  parseJSON =
    withObject
      "NotificationConfig"
      ( \x ->
          NotificationConfig'
            <$> (x .:? "NotificationArn")
            <*> (x .:? "NotificationType")
            <*> (x .:? "NotificationEvents" .!= mempty)
      )

instance Hashable NotificationConfig

instance NFData NotificationConfig

instance ToJSON NotificationConfig where
  toJSON NotificationConfig' {..} =
    object
      ( catMaybes
          [ ("NotificationArn" .=) <$> _ncNotificationARN,
            ("NotificationType" .=) <$> _ncNotificationType,
            ("NotificationEvents" .=) <$> _ncNotificationEvents
          ]
      )
