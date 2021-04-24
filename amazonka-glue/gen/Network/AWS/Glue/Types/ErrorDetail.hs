{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ErrorDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ErrorDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about an error.
--
--
--
-- /See:/ 'errorDetail' smart constructor.
data ErrorDetail = ErrorDetail'
  { _edErrorMessage ::
      !(Maybe Text),
    _edErrorCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edErrorMessage' - A message describing the error.
--
-- * 'edErrorCode' - The code associated with this error.
errorDetail ::
  ErrorDetail
errorDetail =
  ErrorDetail'
    { _edErrorMessage = Nothing,
      _edErrorCode = Nothing
    }

-- | A message describing the error.
edErrorMessage :: Lens' ErrorDetail (Maybe Text)
edErrorMessage = lens _edErrorMessage (\s a -> s {_edErrorMessage = a})

-- | The code associated with this error.
edErrorCode :: Lens' ErrorDetail (Maybe Text)
edErrorCode = lens _edErrorCode (\s a -> s {_edErrorCode = a})

instance FromJSON ErrorDetail where
  parseJSON =
    withObject
      "ErrorDetail"
      ( \x ->
          ErrorDetail'
            <$> (x .:? "ErrorMessage") <*> (x .:? "ErrorCode")
      )

instance Hashable ErrorDetail

instance NFData ErrorDetail
