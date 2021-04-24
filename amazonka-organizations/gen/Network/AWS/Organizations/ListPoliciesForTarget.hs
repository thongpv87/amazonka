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
-- Module      : Network.AWS.Organizations.ListPoliciesForTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.
--
--
-- This operation can be called only from the organization's management account or by a member account that is a delegated administrator for an AWS service.
--
--
-- This operation returns paginated results.
module Network.AWS.Organizations.ListPoliciesForTarget
  ( -- * Creating a Request
    listPoliciesForTarget,
    ListPoliciesForTarget,

    -- * Request Lenses
    lpftNextToken,
    lpftMaxResults,
    lpftTargetId,
    lpftFilter,

    -- * Destructuring the Response
    listPoliciesForTargetResponse,
    ListPoliciesForTargetResponse,

    -- * Response Lenses
    lpftrrsNextToken,
    lpftrrsPolicies,
    lpftrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPoliciesForTarget' smart constructor.
data ListPoliciesForTarget = ListPoliciesForTarget'
  { _lpftNextToken ::
      !(Maybe Text),
    _lpftMaxResults ::
      !(Maybe Nat),
    _lpftTargetId :: !Text,
    _lpftFilter :: !PolicyType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPoliciesForTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpftNextToken' - The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value of the previous call's @NextToken@ response to indicate where the output should continue from.
--
-- * 'lpftMaxResults' - The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
--
-- * 'lpftTargetId' - The unique identifier (ID) of the root, organizational unit, or account whose policies you want to list. The <http://wikipedia.org/wiki/regex regex pattern> for a target ID string requires one of the following:     * __Root__ - A string that begins with "r-" followed by from 4 to 32 lowercase letters or digits.     * __Account__ - A string that consists of exactly 12 digits.     * __Organizational unit (OU)__ - A string that begins with "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters or digits.
--
-- * 'lpftFilter' - The type of policy that you want to include in the returned list. You must specify one of the following values:     * <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html AISERVICES_OPT_OUT_POLICY>      * <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html BACKUP_POLICY>      * <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html SERVICE_CONTROL_POLICY>      * <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html TAG_POLICY>
listPoliciesForTarget ::
  -- | 'lpftTargetId'
  Text ->
  -- | 'lpftFilter'
  PolicyType ->
  ListPoliciesForTarget
listPoliciesForTarget pTargetId_ pFilter_ =
  ListPoliciesForTarget'
    { _lpftNextToken = Nothing,
      _lpftMaxResults = Nothing,
      _lpftTargetId = pTargetId_,
      _lpftFilter = pFilter_
    }

-- | The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value of the previous call's @NextToken@ response to indicate where the output should continue from.
lpftNextToken :: Lens' ListPoliciesForTarget (Maybe Text)
lpftNextToken = lens _lpftNextToken (\s a -> s {_lpftNextToken = a})

-- | The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
lpftMaxResults :: Lens' ListPoliciesForTarget (Maybe Natural)
lpftMaxResults = lens _lpftMaxResults (\s a -> s {_lpftMaxResults = a}) . mapping _Nat

-- | The unique identifier (ID) of the root, organizational unit, or account whose policies you want to list. The <http://wikipedia.org/wiki/regex regex pattern> for a target ID string requires one of the following:     * __Root__ - A string that begins with "r-" followed by from 4 to 32 lowercase letters or digits.     * __Account__ - A string that consists of exactly 12 digits.     * __Organizational unit (OU)__ - A string that begins with "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters or digits.
lpftTargetId :: Lens' ListPoliciesForTarget Text
lpftTargetId = lens _lpftTargetId (\s a -> s {_lpftTargetId = a})

-- | The type of policy that you want to include in the returned list. You must specify one of the following values:     * <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html AISERVICES_OPT_OUT_POLICY>      * <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html BACKUP_POLICY>      * <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html SERVICE_CONTROL_POLICY>      * <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html TAG_POLICY>
lpftFilter :: Lens' ListPoliciesForTarget PolicyType
lpftFilter = lens _lpftFilter (\s a -> s {_lpftFilter = a})

instance AWSPager ListPoliciesForTarget where
  page rq rs
    | stop (rs ^. lpftrrsNextToken) = Nothing
    | stop (rs ^. lpftrrsPolicies) = Nothing
    | otherwise =
      Just $ rq & lpftNextToken .~ rs ^. lpftrrsNextToken

instance AWSRequest ListPoliciesForTarget where
  type
    Rs ListPoliciesForTarget =
      ListPoliciesForTargetResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          ListPoliciesForTargetResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Policies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPoliciesForTarget

instance NFData ListPoliciesForTarget

instance ToHeaders ListPoliciesForTarget where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.ListPoliciesForTarget" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPoliciesForTarget where
  toJSON ListPoliciesForTarget' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lpftNextToken,
            ("MaxResults" .=) <$> _lpftMaxResults,
            Just ("TargetId" .= _lpftTargetId),
            Just ("Filter" .= _lpftFilter)
          ]
      )

instance ToPath ListPoliciesForTarget where
  toPath = const "/"

instance ToQuery ListPoliciesForTarget where
  toQuery = const mempty

-- | /See:/ 'listPoliciesForTargetResponse' smart constructor.
data ListPoliciesForTargetResponse = ListPoliciesForTargetResponse'
  { _lpftrrsNextToken ::
      !( Maybe
           Text
       ),
    _lpftrrsPolicies ::
      !( Maybe
           [PolicySummary]
       ),
    _lpftrrsResponseStatus ::
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

-- | Creates a value of 'ListPoliciesForTargetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpftrrsNextToken' - If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
--
-- * 'lpftrrsPolicies' - The list of policies that match the criteria in the request.
--
-- * 'lpftrrsResponseStatus' - -- | The response status code.
listPoliciesForTargetResponse ::
  -- | 'lpftrrsResponseStatus'
  Int ->
  ListPoliciesForTargetResponse
listPoliciesForTargetResponse pResponseStatus_ =
  ListPoliciesForTargetResponse'
    { _lpftrrsNextToken =
        Nothing,
      _lpftrrsPolicies = Nothing,
      _lpftrrsResponseStatus = pResponseStatus_
    }

-- | If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
lpftrrsNextToken :: Lens' ListPoliciesForTargetResponse (Maybe Text)
lpftrrsNextToken = lens _lpftrrsNextToken (\s a -> s {_lpftrrsNextToken = a})

-- | The list of policies that match the criteria in the request.
lpftrrsPolicies :: Lens' ListPoliciesForTargetResponse [PolicySummary]
lpftrrsPolicies = lens _lpftrrsPolicies (\s a -> s {_lpftrrsPolicies = a}) . _Default . _Coerce

-- | -- | The response status code.
lpftrrsResponseStatus :: Lens' ListPoliciesForTargetResponse Int
lpftrrsResponseStatus = lens _lpftrrsResponseStatus (\s a -> s {_lpftrrsResponseStatus = a})

instance NFData ListPoliciesForTargetResponse
