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
-- Module      : Network.AWS.SSM.StartAssociationsOnce
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this API action to run an association immediately and only one time. This action can be helpful when troubleshooting associations.
module Network.AWS.SSM.StartAssociationsOnce
  ( -- * Creating a Request
    startAssociationsOnce,
    StartAssociationsOnce,

    -- * Request Lenses
    saoAssociationIds,

    -- * Destructuring the Response
    startAssociationsOnceResponse,
    StartAssociationsOnceResponse,

    -- * Response Lenses
    saorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'startAssociationsOnce' smart constructor.
newtype StartAssociationsOnce = StartAssociationsOnce'
  { _saoAssociationIds ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartAssociationsOnce' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saoAssociationIds' - The association IDs that you want to run immediately and only one time.
startAssociationsOnce ::
  -- | 'saoAssociationIds'
  NonEmpty Text ->
  StartAssociationsOnce
startAssociationsOnce pAssociationIds_ =
  StartAssociationsOnce'
    { _saoAssociationIds =
        _List1 # pAssociationIds_
    }

-- | The association IDs that you want to run immediately and only one time.
saoAssociationIds :: Lens' StartAssociationsOnce (NonEmpty Text)
saoAssociationIds = lens _saoAssociationIds (\s a -> s {_saoAssociationIds = a}) . _List1

instance AWSRequest StartAssociationsOnce where
  type
    Rs StartAssociationsOnce =
      StartAssociationsOnceResponse
  request = postJSON ssm
  response =
    receiveEmpty
      ( \s h x ->
          StartAssociationsOnceResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable StartAssociationsOnce

instance NFData StartAssociationsOnce

instance ToHeaders StartAssociationsOnce where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.StartAssociationsOnce" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartAssociationsOnce where
  toJSON StartAssociationsOnce' {..} =
    object
      ( catMaybes
          [Just ("AssociationIds" .= _saoAssociationIds)]
      )

instance ToPath StartAssociationsOnce where
  toPath = const "/"

instance ToQuery StartAssociationsOnce where
  toQuery = const mempty

-- | /See:/ 'startAssociationsOnceResponse' smart constructor.
newtype StartAssociationsOnceResponse = StartAssociationsOnceResponse'
  { _saorrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartAssociationsOnceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saorrsResponseStatus' - -- | The response status code.
startAssociationsOnceResponse ::
  -- | 'saorrsResponseStatus'
  Int ->
  StartAssociationsOnceResponse
startAssociationsOnceResponse pResponseStatus_ =
  StartAssociationsOnceResponse'
    { _saorrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
saorrsResponseStatus :: Lens' StartAssociationsOnceResponse Int
saorrsResponseStatus = lens _saorrsResponseStatus (\s a -> s {_saorrsResponseStatus = a})

instance NFData StartAssociationsOnceResponse
