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
-- Module      : Network.AWS.SSM.RegisterPatchBaselineForPatchGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a patch baseline for a patch group.
module Network.AWS.SSM.RegisterPatchBaselineForPatchGroup
  ( -- * Creating a Request
    registerPatchBaselineForPatchGroup,
    RegisterPatchBaselineForPatchGroup,

    -- * Request Lenses
    rpbfpgBaselineId,
    rpbfpgPatchGroup,

    -- * Destructuring the Response
    registerPatchBaselineForPatchGroupResponse,
    RegisterPatchBaselineForPatchGroupResponse,

    -- * Response Lenses
    rpbfpgrrsBaselineId,
    rpbfpgrrsPatchGroup,
    rpbfpgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'registerPatchBaselineForPatchGroup' smart constructor.
data RegisterPatchBaselineForPatchGroup = RegisterPatchBaselineForPatchGroup'
  { _rpbfpgBaselineId ::
      !Text,
    _rpbfpgPatchGroup ::
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

-- | Creates a value of 'RegisterPatchBaselineForPatchGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpbfpgBaselineId' - The ID of the patch baseline to register the patch group with.
--
-- * 'rpbfpgPatchGroup' - The name of the patch group that should be registered with the patch baseline.
registerPatchBaselineForPatchGroup ::
  -- | 'rpbfpgBaselineId'
  Text ->
  -- | 'rpbfpgPatchGroup'
  Text ->
  RegisterPatchBaselineForPatchGroup
registerPatchBaselineForPatchGroup
  pBaselineId_
  pPatchGroup_ =
    RegisterPatchBaselineForPatchGroup'
      { _rpbfpgBaselineId =
          pBaselineId_,
        _rpbfpgPatchGroup = pPatchGroup_
      }

-- | The ID of the patch baseline to register the patch group with.
rpbfpgBaselineId :: Lens' RegisterPatchBaselineForPatchGroup Text
rpbfpgBaselineId = lens _rpbfpgBaselineId (\s a -> s {_rpbfpgBaselineId = a})

-- | The name of the patch group that should be registered with the patch baseline.
rpbfpgPatchGroup :: Lens' RegisterPatchBaselineForPatchGroup Text
rpbfpgPatchGroup = lens _rpbfpgPatchGroup (\s a -> s {_rpbfpgPatchGroup = a})

instance
  AWSRequest
    RegisterPatchBaselineForPatchGroup
  where
  type
    Rs RegisterPatchBaselineForPatchGroup =
      RegisterPatchBaselineForPatchGroupResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          RegisterPatchBaselineForPatchGroupResponse'
            <$> (x .?> "BaselineId")
            <*> (x .?> "PatchGroup")
            <*> (pure (fromEnum s))
      )

instance Hashable RegisterPatchBaselineForPatchGroup

instance NFData RegisterPatchBaselineForPatchGroup

instance ToHeaders RegisterPatchBaselineForPatchGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.RegisterPatchBaselineForPatchGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RegisterPatchBaselineForPatchGroup where
  toJSON RegisterPatchBaselineForPatchGroup' {..} =
    object
      ( catMaybes
          [ Just ("BaselineId" .= _rpbfpgBaselineId),
            Just ("PatchGroup" .= _rpbfpgPatchGroup)
          ]
      )

instance ToPath RegisterPatchBaselineForPatchGroup where
  toPath = const "/"

instance ToQuery RegisterPatchBaselineForPatchGroup where
  toQuery = const mempty

-- | /See:/ 'registerPatchBaselineForPatchGroupResponse' smart constructor.
data RegisterPatchBaselineForPatchGroupResponse = RegisterPatchBaselineForPatchGroupResponse'
  { _rpbfpgrrsBaselineId ::
      !( Maybe
           Text
       ),
    _rpbfpgrrsPatchGroup ::
      !( Maybe
           Text
       ),
    _rpbfpgrrsResponseStatus ::
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

-- | Creates a value of 'RegisterPatchBaselineForPatchGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpbfpgrrsBaselineId' - The ID of the patch baseline the patch group was registered with.
--
-- * 'rpbfpgrrsPatchGroup' - The name of the patch group registered with the patch baseline.
--
-- * 'rpbfpgrrsResponseStatus' - -- | The response status code.
registerPatchBaselineForPatchGroupResponse ::
  -- | 'rpbfpgrrsResponseStatus'
  Int ->
  RegisterPatchBaselineForPatchGroupResponse
registerPatchBaselineForPatchGroupResponse
  pResponseStatus_ =
    RegisterPatchBaselineForPatchGroupResponse'
      { _rpbfpgrrsBaselineId =
          Nothing,
        _rpbfpgrrsPatchGroup = Nothing,
        _rpbfpgrrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the patch baseline the patch group was registered with.
rpbfpgrrsBaselineId :: Lens' RegisterPatchBaselineForPatchGroupResponse (Maybe Text)
rpbfpgrrsBaselineId = lens _rpbfpgrrsBaselineId (\s a -> s {_rpbfpgrrsBaselineId = a})

-- | The name of the patch group registered with the patch baseline.
rpbfpgrrsPatchGroup :: Lens' RegisterPatchBaselineForPatchGroupResponse (Maybe Text)
rpbfpgrrsPatchGroup = lens _rpbfpgrrsPatchGroup (\s a -> s {_rpbfpgrrsPatchGroup = a})

-- | -- | The response status code.
rpbfpgrrsResponseStatus :: Lens' RegisterPatchBaselineForPatchGroupResponse Int
rpbfpgrrsResponseStatus = lens _rpbfpgrrsResponseStatus (\s a -> s {_rpbfpgrrsResponseStatus = a})

instance
  NFData
    RegisterPatchBaselineForPatchGroupResponse
