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
-- Module      : Network.AWS.DirectConnect.DeleteDirectConnectGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Direct Connect gateway. You must first delete all virtual interfaces that are attached to the Direct Connect gateway and disassociate all virtual private gateways associated with the Direct Connect gateway.
module Network.AWS.DirectConnect.DeleteDirectConnectGateway
  ( -- * Creating a Request
    deleteDirectConnectGateway,
    DeleteDirectConnectGateway,

    -- * Request Lenses
    ddcgdDirectConnectGatewayId,

    -- * Destructuring the Response
    deleteDirectConnectGatewayResponse,
    DeleteDirectConnectGatewayResponse,

    -- * Response Lenses
    ddcgrrsDirectConnectGateway,
    ddcgrrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDirectConnectGateway' smart constructor.
newtype DeleteDirectConnectGateway = DeleteDirectConnectGateway'
  { _ddcgdDirectConnectGatewayId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDirectConnectGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgdDirectConnectGatewayId' - The ID of the Direct Connect gateway.
deleteDirectConnectGateway ::
  -- | 'ddcgdDirectConnectGatewayId'
  Text ->
  DeleteDirectConnectGateway
deleteDirectConnectGateway pDirectConnectGatewayId_ =
  DeleteDirectConnectGateway'
    { _ddcgdDirectConnectGatewayId =
        pDirectConnectGatewayId_
    }

-- | The ID of the Direct Connect gateway.
ddcgdDirectConnectGatewayId :: Lens' DeleteDirectConnectGateway Text
ddcgdDirectConnectGatewayId = lens _ddcgdDirectConnectGatewayId (\s a -> s {_ddcgdDirectConnectGatewayId = a})

instance AWSRequest DeleteDirectConnectGateway where
  type
    Rs DeleteDirectConnectGateway =
      DeleteDirectConnectGatewayResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DeleteDirectConnectGatewayResponse'
            <$> (x .?> "directConnectGateway")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteDirectConnectGateway

instance NFData DeleteDirectConnectGateway

instance ToHeaders DeleteDirectConnectGateway where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DeleteDirectConnectGateway" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteDirectConnectGateway where
  toJSON DeleteDirectConnectGateway' {..} =
    object
      ( catMaybes
          [ Just
              ( "directConnectGatewayId"
                  .= _ddcgdDirectConnectGatewayId
              )
          ]
      )

instance ToPath DeleteDirectConnectGateway where
  toPath = const "/"

instance ToQuery DeleteDirectConnectGateway where
  toQuery = const mempty

-- | /See:/ 'deleteDirectConnectGatewayResponse' smart constructor.
data DeleteDirectConnectGatewayResponse = DeleteDirectConnectGatewayResponse'
  { _ddcgrrsDirectConnectGateway ::
      !( Maybe
           DirectConnectGateway
       ),
    _ddcgrrsResponseStatus ::
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

-- | Creates a value of 'DeleteDirectConnectGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgrrsDirectConnectGateway' - The Direct Connect gateway.
--
-- * 'ddcgrrsResponseStatus' - -- | The response status code.
deleteDirectConnectGatewayResponse ::
  -- | 'ddcgrrsResponseStatus'
  Int ->
  DeleteDirectConnectGatewayResponse
deleteDirectConnectGatewayResponse pResponseStatus_ =
  DeleteDirectConnectGatewayResponse'
    { _ddcgrrsDirectConnectGateway =
        Nothing,
      _ddcgrrsResponseStatus =
        pResponseStatus_
    }

-- | The Direct Connect gateway.
ddcgrrsDirectConnectGateway :: Lens' DeleteDirectConnectGatewayResponse (Maybe DirectConnectGateway)
ddcgrrsDirectConnectGateway = lens _ddcgrrsDirectConnectGateway (\s a -> s {_ddcgrrsDirectConnectGateway = a})

-- | -- | The response status code.
ddcgrrsResponseStatus :: Lens' DeleteDirectConnectGatewayResponse Int
ddcgrrsResponseStatus = lens _ddcgrrsResponseStatus (\s a -> s {_ddcgrrsResponseStatus = a})

instance NFData DeleteDirectConnectGatewayResponse
