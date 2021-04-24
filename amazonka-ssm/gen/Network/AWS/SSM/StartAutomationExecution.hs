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
-- Module      : Network.AWS.SSM.StartAutomationExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates execution of an Automation document.
module Network.AWS.SSM.StartAutomationExecution
  ( -- * Creating a Request
    startAutomationExecution,
    StartAutomationExecution,

    -- * Request Lenses
    saeMaxErrors,
    saeMode,
    saeTargets,
    saeTargetLocations,
    saeTargetParameterName,
    saeMaxConcurrency,
    saeTags,
    saeTargetMaps,
    saeDocumentVersion,
    saeParameters,
    saeClientToken,
    saeDocumentName,

    -- * Destructuring the Response
    startAutomationExecutionResponse,
    StartAutomationExecutionResponse,

    -- * Response Lenses
    saerrsAutomationExecutionId,
    saerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'startAutomationExecution' smart constructor.
data StartAutomationExecution = StartAutomationExecution'
  { _saeMaxErrors ::
      !(Maybe Text),
    _saeMode ::
      !( Maybe
           ExecutionMode
       ),
    _saeTargets ::
      !(Maybe [Target]),
    _saeTargetLocations ::
      !( Maybe
           ( List1
               TargetLocation
           )
       ),
    _saeTargetParameterName ::
      !(Maybe Text),
    _saeMaxConcurrency ::
      !(Maybe Text),
    _saeTags ::
      !(Maybe [Tag]),
    _saeTargetMaps ::
      !( Maybe
           [ Map
               Text
               [Text]
           ]
       ),
    _saeDocumentVersion ::
      !(Maybe Text),
    _saeParameters ::
      !( Maybe
           ( Map
               Text
               [Text]
           )
       ),
    _saeClientToken ::
      !(Maybe Text),
    _saeDocumentName ::
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

-- | Creates a value of 'StartAutomationExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saeMaxErrors' - The number of errors that are allowed before the system stops running the automation on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops running the automation when the fourth error is received. If you specify 0, then the system stops running the automation on additional targets after the first error result is returned. If you run an automation on 50 resources and set max-errors to 10%, then the system stops running the automation on additional targets when the sixth error is received. Executions that are already running an automation when max-errors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one at a time.
--
-- * 'saeMode' - The execution mode of the automation. Valid modes include the following: Auto and Interactive. The default mode is Auto.
--
-- * 'saeTargets' - A key-value mapping to target resources. Required if you specify TargetParameterName.
--
-- * 'saeTargetLocations' - A location is a combination of AWS Regions and/or AWS accounts where you want to run the Automation. Use this action to start an Automation in multiple Regions and multiple accounts. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html Running Automation workflows in multiple AWS Regions and accounts> in the /AWS Systems Manager User Guide/ .
--
-- * 'saeTargetParameterName' - The name of the parameter used as the target resource for the rate-controlled execution. Required if you specify targets.
--
-- * 'saeMaxConcurrency' - The maximum number of targets allowed to run this task in parallel. You can specify a number, such as 10, or a percentage, such as 10%. The default value is 10.
--
-- * 'saeTags' - Optional metadata that you assign to a resource. You can specify a maximum of five tags for an automation. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an automation to identify an environment or operating system. In this case, you could specify the following key name/value pairs:     * @Key=environment,Value=test@      * @Key=OS,Value=Windows@
--
-- * 'saeTargetMaps' - A key-value mapping of document parameters to target resources. Both Targets and TargetMaps cannot be specified together.
--
-- * 'saeDocumentVersion' - The version of the Automation document to use for this execution.
--
-- * 'saeParameters' - A key-value map of execution parameters, which match the declared parameters in the Automation document.
--
-- * 'saeClientToken' - User-provided idempotency token. The token must be unique, is case insensitive, enforces the UUID format, and can't be reused.
--
-- * 'saeDocumentName' - The name of the Systems Manager document to run. This can be a public document or a custom document. To run a shared document belonging to another account, specify the document ARN. For more information about how to use shared documents, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html Using shared SSM documents> in the /AWS Systems Manager User Guide/ .
startAutomationExecution ::
  -- | 'saeDocumentName'
  Text ->
  StartAutomationExecution
startAutomationExecution pDocumentName_ =
  StartAutomationExecution'
    { _saeMaxErrors = Nothing,
      _saeMode = Nothing,
      _saeTargets = Nothing,
      _saeTargetLocations = Nothing,
      _saeTargetParameterName = Nothing,
      _saeMaxConcurrency = Nothing,
      _saeTags = Nothing,
      _saeTargetMaps = Nothing,
      _saeDocumentVersion = Nothing,
      _saeParameters = Nothing,
      _saeClientToken = Nothing,
      _saeDocumentName = pDocumentName_
    }

-- | The number of errors that are allowed before the system stops running the automation on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops running the automation when the fourth error is received. If you specify 0, then the system stops running the automation on additional targets after the first error result is returned. If you run an automation on 50 resources and set max-errors to 10%, then the system stops running the automation on additional targets when the sixth error is received. Executions that are already running an automation when max-errors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one at a time.
saeMaxErrors :: Lens' StartAutomationExecution (Maybe Text)
saeMaxErrors = lens _saeMaxErrors (\s a -> s {_saeMaxErrors = a})

-- | The execution mode of the automation. Valid modes include the following: Auto and Interactive. The default mode is Auto.
saeMode :: Lens' StartAutomationExecution (Maybe ExecutionMode)
saeMode = lens _saeMode (\s a -> s {_saeMode = a})

-- | A key-value mapping to target resources. Required if you specify TargetParameterName.
saeTargets :: Lens' StartAutomationExecution [Target]
saeTargets = lens _saeTargets (\s a -> s {_saeTargets = a}) . _Default . _Coerce

-- | A location is a combination of AWS Regions and/or AWS accounts where you want to run the Automation. Use this action to start an Automation in multiple Regions and multiple accounts. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html Running Automation workflows in multiple AWS Regions and accounts> in the /AWS Systems Manager User Guide/ .
saeTargetLocations :: Lens' StartAutomationExecution (Maybe (NonEmpty TargetLocation))
saeTargetLocations = lens _saeTargetLocations (\s a -> s {_saeTargetLocations = a}) . mapping _List1

-- | The name of the parameter used as the target resource for the rate-controlled execution. Required if you specify targets.
saeTargetParameterName :: Lens' StartAutomationExecution (Maybe Text)
saeTargetParameterName = lens _saeTargetParameterName (\s a -> s {_saeTargetParameterName = a})

-- | The maximum number of targets allowed to run this task in parallel. You can specify a number, such as 10, or a percentage, such as 10%. The default value is 10.
saeMaxConcurrency :: Lens' StartAutomationExecution (Maybe Text)
saeMaxConcurrency = lens _saeMaxConcurrency (\s a -> s {_saeMaxConcurrency = a})

-- | Optional metadata that you assign to a resource. You can specify a maximum of five tags for an automation. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an automation to identify an environment or operating system. In this case, you could specify the following key name/value pairs:     * @Key=environment,Value=test@      * @Key=OS,Value=Windows@
saeTags :: Lens' StartAutomationExecution [Tag]
saeTags = lens _saeTags (\s a -> s {_saeTags = a}) . _Default . _Coerce

-- | A key-value mapping of document parameters to target resources. Both Targets and TargetMaps cannot be specified together.
saeTargetMaps :: Lens' StartAutomationExecution [HashMap Text [Text]]
saeTargetMaps = lens _saeTargetMaps (\s a -> s {_saeTargetMaps = a}) . _Default . _Coerce

-- | The version of the Automation document to use for this execution.
saeDocumentVersion :: Lens' StartAutomationExecution (Maybe Text)
saeDocumentVersion = lens _saeDocumentVersion (\s a -> s {_saeDocumentVersion = a})

-- | A key-value map of execution parameters, which match the declared parameters in the Automation document.
saeParameters :: Lens' StartAutomationExecution (HashMap Text [Text])
saeParameters = lens _saeParameters (\s a -> s {_saeParameters = a}) . _Default . _Map

-- | User-provided idempotency token. The token must be unique, is case insensitive, enforces the UUID format, and can't be reused.
saeClientToken :: Lens' StartAutomationExecution (Maybe Text)
saeClientToken = lens _saeClientToken (\s a -> s {_saeClientToken = a})

-- | The name of the Systems Manager document to run. This can be a public document or a custom document. To run a shared document belonging to another account, specify the document ARN. For more information about how to use shared documents, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html Using shared SSM documents> in the /AWS Systems Manager User Guide/ .
saeDocumentName :: Lens' StartAutomationExecution Text
saeDocumentName = lens _saeDocumentName (\s a -> s {_saeDocumentName = a})

instance AWSRequest StartAutomationExecution where
  type
    Rs StartAutomationExecution =
      StartAutomationExecutionResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          StartAutomationExecutionResponse'
            <$> (x .?> "AutomationExecutionId")
            <*> (pure (fromEnum s))
      )

instance Hashable StartAutomationExecution

instance NFData StartAutomationExecution

instance ToHeaders StartAutomationExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.StartAutomationExecution" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartAutomationExecution where
  toJSON StartAutomationExecution' {..} =
    object
      ( catMaybes
          [ ("MaxErrors" .=) <$> _saeMaxErrors,
            ("Mode" .=) <$> _saeMode,
            ("Targets" .=) <$> _saeTargets,
            ("TargetLocations" .=) <$> _saeTargetLocations,
            ("TargetParameterName" .=)
              <$> _saeTargetParameterName,
            ("MaxConcurrency" .=) <$> _saeMaxConcurrency,
            ("Tags" .=) <$> _saeTags,
            ("TargetMaps" .=) <$> _saeTargetMaps,
            ("DocumentVersion" .=) <$> _saeDocumentVersion,
            ("Parameters" .=) <$> _saeParameters,
            ("ClientToken" .=) <$> _saeClientToken,
            Just ("DocumentName" .= _saeDocumentName)
          ]
      )

instance ToPath StartAutomationExecution where
  toPath = const "/"

instance ToQuery StartAutomationExecution where
  toQuery = const mempty

-- | /See:/ 'startAutomationExecutionResponse' smart constructor.
data StartAutomationExecutionResponse = StartAutomationExecutionResponse'
  { _saerrsAutomationExecutionId ::
      !( Maybe
           Text
       ),
    _saerrsResponseStatus ::
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

-- | Creates a value of 'StartAutomationExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saerrsAutomationExecutionId' - The unique ID of a newly scheduled automation execution.
--
-- * 'saerrsResponseStatus' - -- | The response status code.
startAutomationExecutionResponse ::
  -- | 'saerrsResponseStatus'
  Int ->
  StartAutomationExecutionResponse
startAutomationExecutionResponse pResponseStatus_ =
  StartAutomationExecutionResponse'
    { _saerrsAutomationExecutionId =
        Nothing,
      _saerrsResponseStatus = pResponseStatus_
    }

-- | The unique ID of a newly scheduled automation execution.
saerrsAutomationExecutionId :: Lens' StartAutomationExecutionResponse (Maybe Text)
saerrsAutomationExecutionId = lens _saerrsAutomationExecutionId (\s a -> s {_saerrsAutomationExecutionId = a})

-- | -- | The response status code.
saerrsResponseStatus :: Lens' StartAutomationExecutionResponse Int
saerrsResponseStatus = lens _saerrsResponseStatus (\s a -> s {_saerrsResponseStatus = a})

instance NFData StartAutomationExecutionResponse
