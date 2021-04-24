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
-- Module      : Network.AWS.CloudDirectory.CreateSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new schema in a development state. A schema can exist in three phases:
--
--
--     * /Development:/ This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.
--
--     * /Published:/ Published schemas are immutable and have a version associated with them.
--
--     * /Applied:/ Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.
module Network.AWS.CloudDirectory.CreateSchema
  ( -- * Creating a Request
    createSchema,
    CreateSchema,

    -- * Request Lenses
    csName,

    -- * Destructuring the Response
    createSchemaResponse,
    CreateSchemaResponse,

    -- * Response Lenses
    csrrsSchemaARN,
    csrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSchema' smart constructor.
newtype CreateSchema = CreateSchema' {_csName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csName' - The name that is associated with the schema. This is unique to each account and in each region.
createSchema ::
  -- | 'csName'
  Text ->
  CreateSchema
createSchema pName_ = CreateSchema' {_csName = pName_}

-- | The name that is associated with the schema. This is unique to each account and in each region.
csName :: Lens' CreateSchema Text
csName = lens _csName (\s a -> s {_csName = a})

instance AWSRequest CreateSchema where
  type Rs CreateSchema = CreateSchemaResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          CreateSchemaResponse'
            <$> (x .?> "SchemaArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateSchema

instance NFData CreateSchema

instance ToHeaders CreateSchema where
  toHeaders = const mempty

instance ToJSON CreateSchema where
  toJSON CreateSchema' {..} =
    object (catMaybes [Just ("Name" .= _csName)])

instance ToPath CreateSchema where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/create"

instance ToQuery CreateSchema where
  toQuery = const mempty

-- | /See:/ 'createSchemaResponse' smart constructor.
data CreateSchemaResponse = CreateSchemaResponse'
  { _csrrsSchemaARN ::
      !(Maybe Text),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsSchemaARN' - The Amazon Resource Name (ARN) that is associated with the schema. For more information, see 'arns' .
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createSchemaResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateSchemaResponse
createSchemaResponse pResponseStatus_ =
  CreateSchemaResponse'
    { _csrrsSchemaARN = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) that is associated with the schema. For more information, see 'arns' .
csrrsSchemaARN :: Lens' CreateSchemaResponse (Maybe Text)
csrrsSchemaARN = lens _csrrsSchemaARN (\s a -> s {_csrrsSchemaARN = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateSchemaResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateSchemaResponse
