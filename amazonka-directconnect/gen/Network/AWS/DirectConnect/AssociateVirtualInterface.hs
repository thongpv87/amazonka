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
-- Module      : Network.AWS.DirectConnect.AssociateVirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a virtual interface with a specified link aggregation group (LAG) or connection. Connectivity to AWS is temporarily interrupted as the virtual interface is being migrated. If the target connection or LAG has an associated virtual interface with a conflicting VLAN number or a conflicting IP address, the operation fails.
--
--
-- Virtual interfaces associated with a hosted connection cannot be associated with a LAG; hosted connections must be migrated along with their virtual interfaces using 'AssociateHostedConnection' .
--
-- To reassociate a virtual interface to a new connection or LAG, the requester must own either the virtual interface itself or the connection to which the virtual interface is currently associated. Additionally, the requester must own the connection or LAG for the association.
module Network.AWS.DirectConnect.AssociateVirtualInterface
  ( -- * Creating a Request
    associateVirtualInterface,
    AssociateVirtualInterface,

    -- * Request Lenses
    aviVirtualInterfaceId,
    aviConnectionId,

    -- * Destructuring the Response
    virtualInterface,
    VirtualInterface,

    -- * Response Lenses
    viAuthKey,
    viBgpPeers,
    viVirtualGatewayId,
    viAsn,
    viAwsDeviceV2,
    viConnectionId,
    viCustomerRouterConfig,
    viJumboFrameCapable,
    viRouteFilterPrefixes,
    viVirtualInterfaceType,
    viMtu,
    viTags,
    viVirtualInterfaceId,
    viAmazonSideASN,
    viDirectConnectGatewayId,
    viVirtualInterfaceState,
    viVirtualInterfaceName,
    viAddressFamily,
    viAmazonAddress,
    viOwnerAccount,
    viRegion,
    viLocation,
    viVlan,
    viCustomerAddress,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateVirtualInterface' smart constructor.
data AssociateVirtualInterface = AssociateVirtualInterface'
  { _aviVirtualInterfaceId ::
      !Text,
    _aviConnectionId ::
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

-- | Creates a value of 'AssociateVirtualInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aviVirtualInterfaceId' - The ID of the virtual interface.
--
-- * 'aviConnectionId' - The ID of the LAG or connection.
associateVirtualInterface ::
  -- | 'aviVirtualInterfaceId'
  Text ->
  -- | 'aviConnectionId'
  Text ->
  AssociateVirtualInterface
associateVirtualInterface
  pVirtualInterfaceId_
  pConnectionId_ =
    AssociateVirtualInterface'
      { _aviVirtualInterfaceId =
          pVirtualInterfaceId_,
        _aviConnectionId = pConnectionId_
      }

-- | The ID of the virtual interface.
aviVirtualInterfaceId :: Lens' AssociateVirtualInterface Text
aviVirtualInterfaceId = lens _aviVirtualInterfaceId (\s a -> s {_aviVirtualInterfaceId = a})

-- | The ID of the LAG or connection.
aviConnectionId :: Lens' AssociateVirtualInterface Text
aviConnectionId = lens _aviConnectionId (\s a -> s {_aviConnectionId = a})

instance AWSRequest AssociateVirtualInterface where
  type Rs AssociateVirtualInterface = VirtualInterface
  request = postJSON directConnect
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable AssociateVirtualInterface

instance NFData AssociateVirtualInterface

instance ToHeaders AssociateVirtualInterface where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.AssociateVirtualInterface" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AssociateVirtualInterface where
  toJSON AssociateVirtualInterface' {..} =
    object
      ( catMaybes
          [ Just
              ("virtualInterfaceId" .= _aviVirtualInterfaceId),
            Just ("connectionId" .= _aviConnectionId)
          ]
      )

instance ToPath AssociateVirtualInterface where
  toPath = const "/"

instance ToQuery AssociateVirtualInterface where
  toQuery = const mempty
