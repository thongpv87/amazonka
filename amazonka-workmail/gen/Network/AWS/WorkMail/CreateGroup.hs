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
-- Module      : Network.AWS.WorkMail.CreateGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a group that can be used in Amazon WorkMail by calling the 'RegisterToWorkMail' operation.
module Network.AWS.WorkMail.CreateGroup
  ( -- * Creating a Request
    createGroup,
    CreateGroup,

    -- * Request Lenses
    cgOrganizationId,
    cgName,

    -- * Destructuring the Response
    createGroupResponse,
    CreateGroupResponse,

    -- * Response Lenses
    cgrrsGroupId,
    cgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'createGroup' smart constructor.
data CreateGroup = CreateGroup'
  { _cgOrganizationId ::
      !Text,
    _cgName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgOrganizationId' - The organization under which the group is to be created.
--
-- * 'cgName' - The name of the group.
createGroup ::
  -- | 'cgOrganizationId'
  Text ->
  -- | 'cgName'
  Text ->
  CreateGroup
createGroup pOrganizationId_ pName_ =
  CreateGroup'
    { _cgOrganizationId = pOrganizationId_,
      _cgName = pName_
    }

-- | The organization under which the group is to be created.
cgOrganizationId :: Lens' CreateGroup Text
cgOrganizationId = lens _cgOrganizationId (\s a -> s {_cgOrganizationId = a})

-- | The name of the group.
cgName :: Lens' CreateGroup Text
cgName = lens _cgName (\s a -> s {_cgName = a})

instance AWSRequest CreateGroup where
  type Rs CreateGroup = CreateGroupResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          CreateGroupResponse'
            <$> (x .?> "GroupId") <*> (pure (fromEnum s))
      )

instance Hashable CreateGroup

instance NFData CreateGroup

instance ToHeaders CreateGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.CreateGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateGroup where
  toJSON CreateGroup' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _cgOrganizationId),
            Just ("Name" .= _cgName)
          ]
      )

instance ToPath CreateGroup where
  toPath = const "/"

instance ToQuery CreateGroup where
  toQuery = const mempty

-- | /See:/ 'createGroupResponse' smart constructor.
data CreateGroupResponse = CreateGroupResponse'
  { _cgrrsGroupId ::
      !(Maybe Text),
    _cgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgrrsGroupId' - The identifier of the group.
--
-- * 'cgrrsResponseStatus' - -- | The response status code.
createGroupResponse ::
  -- | 'cgrrsResponseStatus'
  Int ->
  CreateGroupResponse
createGroupResponse pResponseStatus_ =
  CreateGroupResponse'
    { _cgrrsGroupId = Nothing,
      _cgrrsResponseStatus = pResponseStatus_
    }

-- | The identifier of the group.
cgrrsGroupId :: Lens' CreateGroupResponse (Maybe Text)
cgrrsGroupId = lens _cgrrsGroupId (\s a -> s {_cgrrsGroupId = a})

-- | -- | The response status code.
cgrrsResponseStatus :: Lens' CreateGroupResponse Int
cgrrsResponseStatus = lens _cgrrsResponseStatus (\s a -> s {_cgrrsResponseStatus = a})

instance NFData CreateGroupResponse
