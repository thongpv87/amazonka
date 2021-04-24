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
-- Module      : Network.AWS.Redshift.AcceptReservedNodeExchange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the configuration (term, payment type, or number of nodes) and no additional costs.
module Network.AWS.Redshift.AcceptReservedNodeExchange
  ( -- * Creating a Request
    acceptReservedNodeExchange,
    AcceptReservedNodeExchange,

    -- * Request Lenses
    arneReservedNodeId,
    arneTargetReservedNodeOfferingId,

    -- * Destructuring the Response
    acceptReservedNodeExchangeResponse,
    AcceptReservedNodeExchangeResponse,

    -- * Response Lenses
    arnerrsExchangedReservedNode,
    arnerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'acceptReservedNodeExchange' smart constructor.
data AcceptReservedNodeExchange = AcceptReservedNodeExchange'
  { _arneReservedNodeId ::
      !Text,
    _arneTargetReservedNodeOfferingId ::
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

-- | Creates a value of 'AcceptReservedNodeExchange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arneReservedNodeId' - A string representing the node identifier of the DC1 Reserved Node to be exchanged.
--
-- * 'arneTargetReservedNodeOfferingId' - The unique identifier of the DC2 Reserved Node offering to be used for the exchange. You can obtain the value for the parameter by calling 'GetReservedNodeExchangeOfferings'
acceptReservedNodeExchange ::
  -- | 'arneReservedNodeId'
  Text ->
  -- | 'arneTargetReservedNodeOfferingId'
  Text ->
  AcceptReservedNodeExchange
acceptReservedNodeExchange
  pReservedNodeId_
  pTargetReservedNodeOfferingId_ =
    AcceptReservedNodeExchange'
      { _arneReservedNodeId =
          pReservedNodeId_,
        _arneTargetReservedNodeOfferingId =
          pTargetReservedNodeOfferingId_
      }

-- | A string representing the node identifier of the DC1 Reserved Node to be exchanged.
arneReservedNodeId :: Lens' AcceptReservedNodeExchange Text
arneReservedNodeId = lens _arneReservedNodeId (\s a -> s {_arneReservedNodeId = a})

-- | The unique identifier of the DC2 Reserved Node offering to be used for the exchange. You can obtain the value for the parameter by calling 'GetReservedNodeExchangeOfferings'
arneTargetReservedNodeOfferingId :: Lens' AcceptReservedNodeExchange Text
arneTargetReservedNodeOfferingId = lens _arneTargetReservedNodeOfferingId (\s a -> s {_arneTargetReservedNodeOfferingId = a})

instance AWSRequest AcceptReservedNodeExchange where
  type
    Rs AcceptReservedNodeExchange =
      AcceptReservedNodeExchangeResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "AcceptReservedNodeExchangeResult"
      ( \s h x ->
          AcceptReservedNodeExchangeResponse'
            <$> (x .@? "ExchangedReservedNode")
            <*> (pure (fromEnum s))
      )

instance Hashable AcceptReservedNodeExchange

instance NFData AcceptReservedNodeExchange

instance ToHeaders AcceptReservedNodeExchange where
  toHeaders = const mempty

instance ToPath AcceptReservedNodeExchange where
  toPath = const "/"

instance ToQuery AcceptReservedNodeExchange where
  toQuery AcceptReservedNodeExchange' {..} =
    mconcat
      [ "Action"
          =: ("AcceptReservedNodeExchange" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "ReservedNodeId" =: _arneReservedNodeId,
        "TargetReservedNodeOfferingId"
          =: _arneTargetReservedNodeOfferingId
      ]

-- | /See:/ 'acceptReservedNodeExchangeResponse' smart constructor.
data AcceptReservedNodeExchangeResponse = AcceptReservedNodeExchangeResponse'
  { _arnerrsExchangedReservedNode ::
      !( Maybe
           ReservedNode
       ),
    _arnerrsResponseStatus ::
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

-- | Creates a value of 'AcceptReservedNodeExchangeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arnerrsExchangedReservedNode' -
--
-- * 'arnerrsResponseStatus' - -- | The response status code.
acceptReservedNodeExchangeResponse ::
  -- | 'arnerrsResponseStatus'
  Int ->
  AcceptReservedNodeExchangeResponse
acceptReservedNodeExchangeResponse pResponseStatus_ =
  AcceptReservedNodeExchangeResponse'
    { _arnerrsExchangedReservedNode =
        Nothing,
      _arnerrsResponseStatus =
        pResponseStatus_
    }

-- |
arnerrsExchangedReservedNode :: Lens' AcceptReservedNodeExchangeResponse (Maybe ReservedNode)
arnerrsExchangedReservedNode = lens _arnerrsExchangedReservedNode (\s a -> s {_arnerrsExchangedReservedNode = a})

-- | -- | The response status code.
arnerrsResponseStatus :: Lens' AcceptReservedNodeExchangeResponse Int
arnerrsResponseStatus = lens _arnerrsResponseStatus (\s a -> s {_arnerrsResponseStatus = a})

instance NFData AcceptReservedNodeExchangeResponse
