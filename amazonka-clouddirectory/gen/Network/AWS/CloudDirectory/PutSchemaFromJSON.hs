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
-- Module      : Network.AWS.CloudDirectory.PutSchemaFromJSON
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows a schema to be updated using JSON upload. Only available for development schemas. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json JSON Schema Format> for more information.
module Network.AWS.CloudDirectory.PutSchemaFromJSON
  ( -- * Creating a Request
    putSchemaFromJSON,
    PutSchemaFromJSON,

    -- * Request Lenses
    psfjSchemaARN,
    psfjDocument,

    -- * Destructuring the Response
    putSchemaFromJSONResponse,
    PutSchemaFromJSONResponse,

    -- * Response Lenses
    psfjrrsARN,
    psfjrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putSchemaFromJSON' smart constructor.
data PutSchemaFromJSON = PutSchemaFromJSON'
  { _psfjSchemaARN ::
      !Text,
    _psfjDocument :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutSchemaFromJSON' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psfjSchemaARN' - The ARN of the schema to update.
--
-- * 'psfjDocument' - The replacement JSON schema.
putSchemaFromJSON ::
  -- | 'psfjSchemaARN'
  Text ->
  -- | 'psfjDocument'
  Text ->
  PutSchemaFromJSON
putSchemaFromJSON pSchemaARN_ pDocument_ =
  PutSchemaFromJSON'
    { _psfjSchemaARN = pSchemaARN_,
      _psfjDocument = pDocument_
    }

-- | The ARN of the schema to update.
psfjSchemaARN :: Lens' PutSchemaFromJSON Text
psfjSchemaARN = lens _psfjSchemaARN (\s a -> s {_psfjSchemaARN = a})

-- | The replacement JSON schema.
psfjDocument :: Lens' PutSchemaFromJSON Text
psfjDocument = lens _psfjDocument (\s a -> s {_psfjDocument = a})

instance AWSRequest PutSchemaFromJSON where
  type Rs PutSchemaFromJSON = PutSchemaFromJSONResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          PutSchemaFromJSONResponse'
            <$> (x .?> "Arn") <*> (pure (fromEnum s))
      )

instance Hashable PutSchemaFromJSON

instance NFData PutSchemaFromJSON

instance ToHeaders PutSchemaFromJSON where
  toHeaders PutSchemaFromJSON' {..} =
    mconcat ["x-amz-data-partition" =# _psfjSchemaARN]

instance ToJSON PutSchemaFromJSON where
  toJSON PutSchemaFromJSON' {..} =
    object
      (catMaybes [Just ("Document" .= _psfjDocument)])

instance ToPath PutSchemaFromJSON where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/json"

instance ToQuery PutSchemaFromJSON where
  toQuery = const mempty

-- | /See:/ 'putSchemaFromJSONResponse' smart constructor.
data PutSchemaFromJSONResponse = PutSchemaFromJSONResponse'
  { _psfjrrsARN ::
      !(Maybe Text),
    _psfjrrsResponseStatus ::
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

-- | Creates a value of 'PutSchemaFromJSONResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psfjrrsARN' - The ARN of the schema to update.
--
-- * 'psfjrrsResponseStatus' - -- | The response status code.
putSchemaFromJSONResponse ::
  -- | 'psfjrrsResponseStatus'
  Int ->
  PutSchemaFromJSONResponse
putSchemaFromJSONResponse pResponseStatus_ =
  PutSchemaFromJSONResponse'
    { _psfjrrsARN = Nothing,
      _psfjrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the schema to update.
psfjrrsARN :: Lens' PutSchemaFromJSONResponse (Maybe Text)
psfjrrsARN = lens _psfjrrsARN (\s a -> s {_psfjrrsARN = a})

-- | -- | The response status code.
psfjrrsResponseStatus :: Lens' PutSchemaFromJSONResponse Int
psfjrrsResponseStatus = lens _psfjrrsResponseStatus (\s a -> s {_psfjrrsResponseStatus = a})

instance NFData PutSchemaFromJSONResponse
