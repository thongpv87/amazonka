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
-- Module      : Network.AWS.WorkMail.UpdatePrimaryEmailAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.
module Network.AWS.WorkMail.UpdatePrimaryEmailAddress
  ( -- * Creating a Request
    updatePrimaryEmailAddress,
    UpdatePrimaryEmailAddress,

    -- * Request Lenses
    upeaOrganizationId,
    upeaEntityId,
    upeaEmail,

    -- * Destructuring the Response
    updatePrimaryEmailAddressResponse,
    UpdatePrimaryEmailAddressResponse,

    -- * Response Lenses
    upearrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'updatePrimaryEmailAddress' smart constructor.
data UpdatePrimaryEmailAddress = UpdatePrimaryEmailAddress'
  { _upeaOrganizationId ::
      !Text,
    _upeaEntityId ::
      !Text,
    _upeaEmail :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdatePrimaryEmailAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upeaOrganizationId' - The organization that contains the user, group, or resource to update.
--
-- * 'upeaEntityId' - The user, group, or resource to update.
--
-- * 'upeaEmail' - The value of the email to be updated as primary.
updatePrimaryEmailAddress ::
  -- | 'upeaOrganizationId'
  Text ->
  -- | 'upeaEntityId'
  Text ->
  -- | 'upeaEmail'
  Text ->
  UpdatePrimaryEmailAddress
updatePrimaryEmailAddress
  pOrganizationId_
  pEntityId_
  pEmail_ =
    UpdatePrimaryEmailAddress'
      { _upeaOrganizationId =
          pOrganizationId_,
        _upeaEntityId = pEntityId_,
        _upeaEmail = pEmail_
      }

-- | The organization that contains the user, group, or resource to update.
upeaOrganizationId :: Lens' UpdatePrimaryEmailAddress Text
upeaOrganizationId = lens _upeaOrganizationId (\s a -> s {_upeaOrganizationId = a})

-- | The user, group, or resource to update.
upeaEntityId :: Lens' UpdatePrimaryEmailAddress Text
upeaEntityId = lens _upeaEntityId (\s a -> s {_upeaEntityId = a})

-- | The value of the email to be updated as primary.
upeaEmail :: Lens' UpdatePrimaryEmailAddress Text
upeaEmail = lens _upeaEmail (\s a -> s {_upeaEmail = a})

instance AWSRequest UpdatePrimaryEmailAddress where
  type
    Rs UpdatePrimaryEmailAddress =
      UpdatePrimaryEmailAddressResponse
  request = postJSON workMail
  response =
    receiveEmpty
      ( \s h x ->
          UpdatePrimaryEmailAddressResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable UpdatePrimaryEmailAddress

instance NFData UpdatePrimaryEmailAddress

instance ToHeaders UpdatePrimaryEmailAddress where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkMailService.UpdatePrimaryEmailAddress" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePrimaryEmailAddress where
  toJSON UpdatePrimaryEmailAddress' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _upeaOrganizationId),
            Just ("EntityId" .= _upeaEntityId),
            Just ("Email" .= _upeaEmail)
          ]
      )

instance ToPath UpdatePrimaryEmailAddress where
  toPath = const "/"

instance ToQuery UpdatePrimaryEmailAddress where
  toQuery = const mempty

-- | /See:/ 'updatePrimaryEmailAddressResponse' smart constructor.
newtype UpdatePrimaryEmailAddressResponse = UpdatePrimaryEmailAddressResponse'
  { _upearrsResponseStatus ::
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

-- | Creates a value of 'UpdatePrimaryEmailAddressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upearrsResponseStatus' - -- | The response status code.
updatePrimaryEmailAddressResponse ::
  -- | 'upearrsResponseStatus'
  Int ->
  UpdatePrimaryEmailAddressResponse
updatePrimaryEmailAddressResponse pResponseStatus_ =
  UpdatePrimaryEmailAddressResponse'
    { _upearrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
upearrsResponseStatus :: Lens' UpdatePrimaryEmailAddressResponse Int
upearrsResponseStatus = lens _upearrsResponseStatus (\s a -> s {_upearrsResponseStatus = a})

instance NFData UpdatePrimaryEmailAddressResponse
