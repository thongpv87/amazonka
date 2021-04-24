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
-- Module      : Network.AWS.DeviceFarm.UpdateDeviceInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information about a private device instance.
module Network.AWS.DeviceFarm.UpdateDeviceInstance
  ( -- * Creating a Request
    updateDeviceInstance,
    UpdateDeviceInstance,

    -- * Request Lenses
    udiLabels,
    udiProfileARN,
    udiArn,

    -- * Destructuring the Response
    updateDeviceInstanceResponse,
    UpdateDeviceInstanceResponse,

    -- * Response Lenses
    udirrsDeviceInstance,
    udirrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateDeviceInstance' smart constructor.
data UpdateDeviceInstance = UpdateDeviceInstance'
  { _udiLabels ::
      !(Maybe [Text]),
    _udiProfileARN ::
      !(Maybe Text),
    _udiArn :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDeviceInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udiLabels' - An array of strings that you want to associate with the device instance.
--
-- * 'udiProfileARN' - The ARN of the profile that you want to associate with the device instance.
--
-- * 'udiArn' - The Amazon Resource Name (ARN) of the device instance.
updateDeviceInstance ::
  -- | 'udiArn'
  Text ->
  UpdateDeviceInstance
updateDeviceInstance pArn_ =
  UpdateDeviceInstance'
    { _udiLabels = Nothing,
      _udiProfileARN = Nothing,
      _udiArn = pArn_
    }

-- | An array of strings that you want to associate with the device instance.
udiLabels :: Lens' UpdateDeviceInstance [Text]
udiLabels = lens _udiLabels (\s a -> s {_udiLabels = a}) . _Default . _Coerce

-- | The ARN of the profile that you want to associate with the device instance.
udiProfileARN :: Lens' UpdateDeviceInstance (Maybe Text)
udiProfileARN = lens _udiProfileARN (\s a -> s {_udiProfileARN = a})

-- | The Amazon Resource Name (ARN) of the device instance.
udiArn :: Lens' UpdateDeviceInstance Text
udiArn = lens _udiArn (\s a -> s {_udiArn = a})

instance AWSRequest UpdateDeviceInstance where
  type
    Rs UpdateDeviceInstance =
      UpdateDeviceInstanceResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          UpdateDeviceInstanceResponse'
            <$> (x .?> "deviceInstance") <*> (pure (fromEnum s))
      )

instance Hashable UpdateDeviceInstance

instance NFData UpdateDeviceInstance

instance ToHeaders UpdateDeviceInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.UpdateDeviceInstance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDeviceInstance where
  toJSON UpdateDeviceInstance' {..} =
    object
      ( catMaybes
          [ ("labels" .=) <$> _udiLabels,
            ("profileArn" .=) <$> _udiProfileARN,
            Just ("arn" .= _udiArn)
          ]
      )

instance ToPath UpdateDeviceInstance where
  toPath = const "/"

instance ToQuery UpdateDeviceInstance where
  toQuery = const mempty

-- | /See:/ 'updateDeviceInstanceResponse' smart constructor.
data UpdateDeviceInstanceResponse = UpdateDeviceInstanceResponse'
  { _udirrsDeviceInstance ::
      !( Maybe
           DeviceInstance
       ),
    _udirrsResponseStatus ::
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

-- | Creates a value of 'UpdateDeviceInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udirrsDeviceInstance' - An object that contains information about your device instance.
--
-- * 'udirrsResponseStatus' - -- | The response status code.
updateDeviceInstanceResponse ::
  -- | 'udirrsResponseStatus'
  Int ->
  UpdateDeviceInstanceResponse
updateDeviceInstanceResponse pResponseStatus_ =
  UpdateDeviceInstanceResponse'
    { _udirrsDeviceInstance =
        Nothing,
      _udirrsResponseStatus = pResponseStatus_
    }

-- | An object that contains information about your device instance.
udirrsDeviceInstance :: Lens' UpdateDeviceInstanceResponse (Maybe DeviceInstance)
udirrsDeviceInstance = lens _udirrsDeviceInstance (\s a -> s {_udirrsDeviceInstance = a})

-- | -- | The response status code.
udirrsResponseStatus :: Lens' UpdateDeviceInstanceResponse Int
udirrsResponseStatus = lens _udirrsResponseStatus (\s a -> s {_udirrsResponseStatus = a})

instance NFData UpdateDeviceInstanceResponse
