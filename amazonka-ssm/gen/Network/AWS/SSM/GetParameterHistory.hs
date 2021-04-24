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
-- Module      : Network.AWS.SSM.GetParameterHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the history of all changes to a parameter.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.GetParameterHistory
  ( -- * Creating a Request
    getParameterHistory,
    GetParameterHistory,

    -- * Request Lenses
    gphWithDecryption,
    gphNextToken,
    gphMaxResults,
    gphName,

    -- * Destructuring the Response
    getParameterHistoryResponse,
    GetParameterHistoryResponse,

    -- * Response Lenses
    gphrrsNextToken,
    gphrrsParameters,
    gphrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getParameterHistory' smart constructor.
data GetParameterHistory = GetParameterHistory'
  { _gphWithDecryption ::
      !(Maybe Bool),
    _gphNextToken :: !(Maybe Text),
    _gphMaxResults :: !(Maybe Nat),
    _gphName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetParameterHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gphWithDecryption' - Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.
--
-- * 'gphNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'gphMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'gphName' - The name of the parameter for which you want to review history.
getParameterHistory ::
  -- | 'gphName'
  Text ->
  GetParameterHistory
getParameterHistory pName_ =
  GetParameterHistory'
    { _gphWithDecryption = Nothing,
      _gphNextToken = Nothing,
      _gphMaxResults = Nothing,
      _gphName = pName_
    }

-- | Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.
gphWithDecryption :: Lens' GetParameterHistory (Maybe Bool)
gphWithDecryption = lens _gphWithDecryption (\s a -> s {_gphWithDecryption = a})

-- | The token for the next set of items to return. (You received this token from a previous call.)
gphNextToken :: Lens' GetParameterHistory (Maybe Text)
gphNextToken = lens _gphNextToken (\s a -> s {_gphNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
gphMaxResults :: Lens' GetParameterHistory (Maybe Natural)
gphMaxResults = lens _gphMaxResults (\s a -> s {_gphMaxResults = a}) . mapping _Nat

-- | The name of the parameter for which you want to review history.
gphName :: Lens' GetParameterHistory Text
gphName = lens _gphName (\s a -> s {_gphName = a})

instance AWSPager GetParameterHistory where
  page rq rs
    | stop (rs ^. gphrrsNextToken) = Nothing
    | stop (rs ^. gphrrsParameters) = Nothing
    | otherwise =
      Just $ rq & gphNextToken .~ rs ^. gphrrsNextToken

instance AWSRequest GetParameterHistory where
  type
    Rs GetParameterHistory =
      GetParameterHistoryResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetParameterHistoryResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Parameters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetParameterHistory

instance NFData GetParameterHistory

instance ToHeaders GetParameterHistory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetParameterHistory" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetParameterHistory where
  toJSON GetParameterHistory' {..} =
    object
      ( catMaybes
          [ ("WithDecryption" .=) <$> _gphWithDecryption,
            ("NextToken" .=) <$> _gphNextToken,
            ("MaxResults" .=) <$> _gphMaxResults,
            Just ("Name" .= _gphName)
          ]
      )

instance ToPath GetParameterHistory where
  toPath = const "/"

instance ToQuery GetParameterHistory where
  toQuery = const mempty

-- | /See:/ 'getParameterHistoryResponse' smart constructor.
data GetParameterHistoryResponse = GetParameterHistoryResponse'
  { _gphrrsNextToken ::
      !(Maybe Text),
    _gphrrsParameters ::
      !( Maybe
           [ParameterHistory]
       ),
    _gphrrsResponseStatus ::
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

-- | Creates a value of 'GetParameterHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gphrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'gphrrsParameters' - A list of parameters returned by the request.
--
-- * 'gphrrsResponseStatus' - -- | The response status code.
getParameterHistoryResponse ::
  -- | 'gphrrsResponseStatus'
  Int ->
  GetParameterHistoryResponse
getParameterHistoryResponse pResponseStatus_ =
  GetParameterHistoryResponse'
    { _gphrrsNextToken =
        Nothing,
      _gphrrsParameters = Nothing,
      _gphrrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
gphrrsNextToken :: Lens' GetParameterHistoryResponse (Maybe Text)
gphrrsNextToken = lens _gphrrsNextToken (\s a -> s {_gphrrsNextToken = a})

-- | A list of parameters returned by the request.
gphrrsParameters :: Lens' GetParameterHistoryResponse [ParameterHistory]
gphrrsParameters = lens _gphrrsParameters (\s a -> s {_gphrrsParameters = a}) . _Default . _Coerce

-- | -- | The response status code.
gphrrsResponseStatus :: Lens' GetParameterHistoryResponse Int
gphrrsResponseStatus = lens _gphrrsResponseStatus (\s a -> s {_gphrrsResponseStatus = a})

instance NFData GetParameterHistoryResponse
