{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.AccountSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.AccountSettings where

import Network.AWS.DeviceFarm.Types.DevicePlatform
import Network.AWS.DeviceFarm.Types.TrialMinutes
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A container for account-level settings in AWS Device Farm.
--
--
--
-- /See:/ 'accountSettings' smart constructor.
data AccountSettings = AccountSettings'
  { _asAwsAccountNumber ::
      !(Maybe Text),
    _asMaxSlots :: !(Maybe (Map Text Int)),
    _asTrialMinutes ::
      !(Maybe TrialMinutes),
    _asSkipAppResign :: !(Maybe Bool),
    _asMaxJobTimeoutMinutes :: !(Maybe Int),
    _asDefaultJobTimeoutMinutes ::
      !(Maybe Int),
    _asUnmeteredDevices ::
      !(Maybe (Map DevicePlatform Int)),
    _asUnmeteredRemoteAccessDevices ::
      !(Maybe (Map DevicePlatform Int))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asAwsAccountNumber' - The AWS account number specified in the @AccountSettings@ container.
--
-- * 'asMaxSlots' - The maximum number of device slots that the AWS account can purchase. Each maximum is expressed as an @offering-id:number@ pair, where the @offering-id@ represents one of the IDs returned by the @ListOfferings@ command.
--
-- * 'asTrialMinutes' - Information about an AWS account's usage of free trial device minutes.
--
-- * 'asSkipAppResign' - When set to @true@ , for private devices, Device Farm does not sign your app again. For public devices, Device Farm always signs your apps again. For more information about how Device Farm re-signs your apps, see <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the /AWS Device Farm FAQs/ .
--
-- * 'asMaxJobTimeoutMinutes' - The maximum number of minutes a test run executes before it times out.
--
-- * 'asDefaultJobTimeoutMinutes' - The default number of minutes (at the account level) a test run executes before it times out. The default value is 150 minutes.
--
-- * 'asUnmeteredDevices' - Returns the unmetered devices you have purchased or want to purchase.
--
-- * 'asUnmeteredRemoteAccessDevices' - Returns the unmetered remote access devices you have purchased or want to purchase.
accountSettings ::
  AccountSettings
accountSettings =
  AccountSettings'
    { _asAwsAccountNumber = Nothing,
      _asMaxSlots = Nothing,
      _asTrialMinutes = Nothing,
      _asSkipAppResign = Nothing,
      _asMaxJobTimeoutMinutes = Nothing,
      _asDefaultJobTimeoutMinutes = Nothing,
      _asUnmeteredDevices = Nothing,
      _asUnmeteredRemoteAccessDevices = Nothing
    }

-- | The AWS account number specified in the @AccountSettings@ container.
asAwsAccountNumber :: Lens' AccountSettings (Maybe Text)
asAwsAccountNumber = lens _asAwsAccountNumber (\s a -> s {_asAwsAccountNumber = a})

-- | The maximum number of device slots that the AWS account can purchase. Each maximum is expressed as an @offering-id:number@ pair, where the @offering-id@ represents one of the IDs returned by the @ListOfferings@ command.
asMaxSlots :: Lens' AccountSettings (HashMap Text Int)
asMaxSlots = lens _asMaxSlots (\s a -> s {_asMaxSlots = a}) . _Default . _Map

-- | Information about an AWS account's usage of free trial device minutes.
asTrialMinutes :: Lens' AccountSettings (Maybe TrialMinutes)
asTrialMinutes = lens _asTrialMinutes (\s a -> s {_asTrialMinutes = a})

-- | When set to @true@ , for private devices, Device Farm does not sign your app again. For public devices, Device Farm always signs your apps again. For more information about how Device Farm re-signs your apps, see <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the /AWS Device Farm FAQs/ .
asSkipAppResign :: Lens' AccountSettings (Maybe Bool)
asSkipAppResign = lens _asSkipAppResign (\s a -> s {_asSkipAppResign = a})

-- | The maximum number of minutes a test run executes before it times out.
asMaxJobTimeoutMinutes :: Lens' AccountSettings (Maybe Int)
asMaxJobTimeoutMinutes = lens _asMaxJobTimeoutMinutes (\s a -> s {_asMaxJobTimeoutMinutes = a})

-- | The default number of minutes (at the account level) a test run executes before it times out. The default value is 150 minutes.
asDefaultJobTimeoutMinutes :: Lens' AccountSettings (Maybe Int)
asDefaultJobTimeoutMinutes = lens _asDefaultJobTimeoutMinutes (\s a -> s {_asDefaultJobTimeoutMinutes = a})

-- | Returns the unmetered devices you have purchased or want to purchase.
asUnmeteredDevices :: Lens' AccountSettings (HashMap DevicePlatform Int)
asUnmeteredDevices = lens _asUnmeteredDevices (\s a -> s {_asUnmeteredDevices = a}) . _Default . _Map

-- | Returns the unmetered remote access devices you have purchased or want to purchase.
asUnmeteredRemoteAccessDevices :: Lens' AccountSettings (HashMap DevicePlatform Int)
asUnmeteredRemoteAccessDevices = lens _asUnmeteredRemoteAccessDevices (\s a -> s {_asUnmeteredRemoteAccessDevices = a}) . _Default . _Map

instance FromJSON AccountSettings where
  parseJSON =
    withObject
      "AccountSettings"
      ( \x ->
          AccountSettings'
            <$> (x .:? "awsAccountNumber")
            <*> (x .:? "maxSlots" .!= mempty)
            <*> (x .:? "trialMinutes")
            <*> (x .:? "skipAppResign")
            <*> (x .:? "maxJobTimeoutMinutes")
            <*> (x .:? "defaultJobTimeoutMinutes")
            <*> (x .:? "unmeteredDevices" .!= mempty)
            <*> (x .:? "unmeteredRemoteAccessDevices" .!= mempty)
      )

instance Hashable AccountSettings

instance NFData AccountSettings
