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
-- Module      : Network.AWS.DirectConnect.DeleteBGPPeer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified BGP peer on the specified virtual interface with the specified customer address and ASN.
--
--
-- You cannot delete the last BGP peer from a virtual interface.
module Network.AWS.DirectConnect.DeleteBGPPeer
  ( -- * Creating a Request
    deleteBGPPeer,
    DeleteBGPPeer,

    -- * Request Lenses
    dbpAsn,
    dbpBgpPeerId,
    dbpVirtualInterfaceId,
    dbpCustomerAddress,

    -- * Destructuring the Response
    deleteBGPPeerResponse,
    DeleteBGPPeerResponse,

    -- * Response Lenses
    dbprrsVirtualInterface,
    dbprrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteBGPPeer' smart constructor.
data DeleteBGPPeer = DeleteBGPPeer'
  { _dbpAsn ::
      !(Maybe Int),
    _dbpBgpPeerId :: !(Maybe Text),
    _dbpVirtualInterfaceId :: !(Maybe Text),
    _dbpCustomerAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBGPPeer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbpAsn' - The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
--
-- * 'dbpBgpPeerId' - The ID of the BGP peer.
--
-- * 'dbpVirtualInterfaceId' - The ID of the virtual interface.
--
-- * 'dbpCustomerAddress' - The IP address assigned to the customer interface.
deleteBGPPeer ::
  DeleteBGPPeer
deleteBGPPeer =
  DeleteBGPPeer'
    { _dbpAsn = Nothing,
      _dbpBgpPeerId = Nothing,
      _dbpVirtualInterfaceId = Nothing,
      _dbpCustomerAddress = Nothing
    }

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
dbpAsn :: Lens' DeleteBGPPeer (Maybe Int)
dbpAsn = lens _dbpAsn (\s a -> s {_dbpAsn = a})

-- | The ID of the BGP peer.
dbpBgpPeerId :: Lens' DeleteBGPPeer (Maybe Text)
dbpBgpPeerId = lens _dbpBgpPeerId (\s a -> s {_dbpBgpPeerId = a})

-- | The ID of the virtual interface.
dbpVirtualInterfaceId :: Lens' DeleteBGPPeer (Maybe Text)
dbpVirtualInterfaceId = lens _dbpVirtualInterfaceId (\s a -> s {_dbpVirtualInterfaceId = a})

-- | The IP address assigned to the customer interface.
dbpCustomerAddress :: Lens' DeleteBGPPeer (Maybe Text)
dbpCustomerAddress = lens _dbpCustomerAddress (\s a -> s {_dbpCustomerAddress = a})

instance AWSRequest DeleteBGPPeer where
  type Rs DeleteBGPPeer = DeleteBGPPeerResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DeleteBGPPeerResponse'
            <$> (x .?> "virtualInterface") <*> (pure (fromEnum s))
      )

instance Hashable DeleteBGPPeer

instance NFData DeleteBGPPeer

instance ToHeaders DeleteBGPPeer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OvertureService.DeleteBGPPeer" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteBGPPeer where
  toJSON DeleteBGPPeer' {..} =
    object
      ( catMaybes
          [ ("asn" .=) <$> _dbpAsn,
            ("bgpPeerId" .=) <$> _dbpBgpPeerId,
            ("virtualInterfaceId" .=) <$> _dbpVirtualInterfaceId,
            ("customerAddress" .=) <$> _dbpCustomerAddress
          ]
      )

instance ToPath DeleteBGPPeer where
  toPath = const "/"

instance ToQuery DeleteBGPPeer where
  toQuery = const mempty

-- | /See:/ 'deleteBGPPeerResponse' smart constructor.
data DeleteBGPPeerResponse = DeleteBGPPeerResponse'
  { _dbprrsVirtualInterface ::
      !(Maybe VirtualInterface),
    _dbprrsResponseStatus ::
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

-- | Creates a value of 'DeleteBGPPeerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbprrsVirtualInterface' - The virtual interface.
--
-- * 'dbprrsResponseStatus' - -- | The response status code.
deleteBGPPeerResponse ::
  -- | 'dbprrsResponseStatus'
  Int ->
  DeleteBGPPeerResponse
deleteBGPPeerResponse pResponseStatus_ =
  DeleteBGPPeerResponse'
    { _dbprrsVirtualInterface =
        Nothing,
      _dbprrsResponseStatus = pResponseStatus_
    }

-- | The virtual interface.
dbprrsVirtualInterface :: Lens' DeleteBGPPeerResponse (Maybe VirtualInterface)
dbprrsVirtualInterface = lens _dbprrsVirtualInterface (\s a -> s {_dbprrsVirtualInterface = a})

-- | -- | The response status code.
dbprrsResponseStatus :: Lens' DeleteBGPPeerResponse Int
dbprrsResponseStatus = lens _dbprrsResponseStatus (\s a -> s {_dbprrsResponseStatus = a})

instance NFData DeleteBGPPeerResponse
