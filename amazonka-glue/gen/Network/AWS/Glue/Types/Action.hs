{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Action
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Action where

import Network.AWS.Glue.Types.NotificationProperty
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines an action to be initiated by a trigger.
--
--
--
-- /See:/ 'action' smart constructor.
data Action = Action'
  { _aSecurityConfiguration ::
      !(Maybe Text),
    _aCrawlerName :: !(Maybe Text),
    _aTimeout :: !(Maybe Nat),
    _aNotificationProperty ::
      !(Maybe NotificationProperty),
    _aJobName :: !(Maybe Text),
    _aArguments :: !(Maybe (Map Text Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this action.
--
-- * 'aCrawlerName' - The name of the crawler to be used with this action.
--
-- * 'aTimeout' - The @JobRun@ timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.
--
-- * 'aNotificationProperty' - Specifies configuration properties of a job run notification.
--
-- * 'aJobName' - The name of a job to be executed.
--
-- * 'aArguments' - The job arguments used when this trigger fires. For this job run, they replace the default arguments set in the job definition itself. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
action ::
  Action
action =
  Action'
    { _aSecurityConfiguration = Nothing,
      _aCrawlerName = Nothing,
      _aTimeout = Nothing,
      _aNotificationProperty = Nothing,
      _aJobName = Nothing,
      _aArguments = Nothing
    }

-- | The name of the @SecurityConfiguration@ structure to be used with this action.
aSecurityConfiguration :: Lens' Action (Maybe Text)
aSecurityConfiguration = lens _aSecurityConfiguration (\s a -> s {_aSecurityConfiguration = a})

-- | The name of the crawler to be used with this action.
aCrawlerName :: Lens' Action (Maybe Text)
aCrawlerName = lens _aCrawlerName (\s a -> s {_aCrawlerName = a})

-- | The @JobRun@ timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.
aTimeout :: Lens' Action (Maybe Natural)
aTimeout = lens _aTimeout (\s a -> s {_aTimeout = a}) . mapping _Nat

-- | Specifies configuration properties of a job run notification.
aNotificationProperty :: Lens' Action (Maybe NotificationProperty)
aNotificationProperty = lens _aNotificationProperty (\s a -> s {_aNotificationProperty = a})

-- | The name of a job to be executed.
aJobName :: Lens' Action (Maybe Text)
aJobName = lens _aJobName (\s a -> s {_aJobName = a})

-- | The job arguments used when this trigger fires. For this job run, they replace the default arguments set in the job definition itself. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
aArguments :: Lens' Action (HashMap Text Text)
aArguments = lens _aArguments (\s a -> s {_aArguments = a}) . _Default . _Map

instance FromJSON Action where
  parseJSON =
    withObject
      "Action"
      ( \x ->
          Action'
            <$> (x .:? "SecurityConfiguration")
            <*> (x .:? "CrawlerName")
            <*> (x .:? "Timeout")
            <*> (x .:? "NotificationProperty")
            <*> (x .:? "JobName")
            <*> (x .:? "Arguments" .!= mempty)
      )

instance Hashable Action

instance NFData Action

instance ToJSON Action where
  toJSON Action' {..} =
    object
      ( catMaybes
          [ ("SecurityConfiguration" .=)
              <$> _aSecurityConfiguration,
            ("CrawlerName" .=) <$> _aCrawlerName,
            ("Timeout" .=) <$> _aTimeout,
            ("NotificationProperty" .=)
              <$> _aNotificationProperty,
            ("JobName" .=) <$> _aJobName,
            ("Arguments" .=) <$> _aArguments
          ]
      )
