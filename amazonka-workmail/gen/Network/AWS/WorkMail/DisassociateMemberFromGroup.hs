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
-- Module      : Network.AWS.WorkMail.DisassociateMemberFromGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a member from a group.
module Network.AWS.WorkMail.DisassociateMemberFromGroup
  ( -- * Creating a Request
    disassociateMemberFromGroup,
    DisassociateMemberFromGroup,

    -- * Request Lenses
    dmfgOrganizationId,
    dmfgGroupId,
    dmfgMemberId,

    -- * Destructuring the Response
    disassociateMemberFromGroupResponse,
    DisassociateMemberFromGroupResponse,

    -- * Response Lenses
    dmfgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'disassociateMemberFromGroup' smart constructor.
data DisassociateMemberFromGroup = DisassociateMemberFromGroup'
  { _dmfgOrganizationId ::
      !Text,
    _dmfgGroupId ::
      !Text,
    _dmfgMemberId ::
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

-- | Creates a value of 'DisassociateMemberFromGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmfgOrganizationId' - The identifier for the organization under which the group exists.
--
-- * 'dmfgGroupId' - The identifier for the group from which members are removed.
--
-- * 'dmfgMemberId' - The identifier for the member to be removed to the group.
disassociateMemberFromGroup ::
  -- | 'dmfgOrganizationId'
  Text ->
  -- | 'dmfgGroupId'
  Text ->
  -- | 'dmfgMemberId'
  Text ->
  DisassociateMemberFromGroup
disassociateMemberFromGroup
  pOrganizationId_
  pGroupId_
  pMemberId_ =
    DisassociateMemberFromGroup'
      { _dmfgOrganizationId =
          pOrganizationId_,
        _dmfgGroupId = pGroupId_,
        _dmfgMemberId = pMemberId_
      }

-- | The identifier for the organization under which the group exists.
dmfgOrganizationId :: Lens' DisassociateMemberFromGroup Text
dmfgOrganizationId = lens _dmfgOrganizationId (\s a -> s {_dmfgOrganizationId = a})

-- | The identifier for the group from which members are removed.
dmfgGroupId :: Lens' DisassociateMemberFromGroup Text
dmfgGroupId = lens _dmfgGroupId (\s a -> s {_dmfgGroupId = a})

-- | The identifier for the member to be removed to the group.
dmfgMemberId :: Lens' DisassociateMemberFromGroup Text
dmfgMemberId = lens _dmfgMemberId (\s a -> s {_dmfgMemberId = a})

instance AWSRequest DisassociateMemberFromGroup where
  type
    Rs DisassociateMemberFromGroup =
      DisassociateMemberFromGroupResponse
  request = postJSON workMail
  response =
    receiveEmpty
      ( \s h x ->
          DisassociateMemberFromGroupResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DisassociateMemberFromGroup

instance NFData DisassociateMemberFromGroup

instance ToHeaders DisassociateMemberFromGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkMailService.DisassociateMemberFromGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisassociateMemberFromGroup where
  toJSON DisassociateMemberFromGroup' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _dmfgOrganizationId),
            Just ("GroupId" .= _dmfgGroupId),
            Just ("MemberId" .= _dmfgMemberId)
          ]
      )

instance ToPath DisassociateMemberFromGroup where
  toPath = const "/"

instance ToQuery DisassociateMemberFromGroup where
  toQuery = const mempty

-- | /See:/ 'disassociateMemberFromGroupResponse' smart constructor.
newtype DisassociateMemberFromGroupResponse = DisassociateMemberFromGroupResponse'
  { _dmfgrrsResponseStatus ::
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

-- | Creates a value of 'DisassociateMemberFromGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmfgrrsResponseStatus' - -- | The response status code.
disassociateMemberFromGroupResponse ::
  -- | 'dmfgrrsResponseStatus'
  Int ->
  DisassociateMemberFromGroupResponse
disassociateMemberFromGroupResponse pResponseStatus_ =
  DisassociateMemberFromGroupResponse'
    { _dmfgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dmfgrrsResponseStatus :: Lens' DisassociateMemberFromGroupResponse Int
dmfgrrsResponseStatus = lens _dmfgrrsResponseStatus (\s a -> s {_dmfgrrsResponseStatus = a})

instance NFData DisassociateMemberFromGroupResponse
