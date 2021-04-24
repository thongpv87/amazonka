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
-- Module      : Network.AWS.CloudDirectory.ApplySchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the input published schema, at the specified version, into the 'Directory' with the same name and version as that of the published schema.
module Network.AWS.CloudDirectory.ApplySchema
  ( -- * Creating a Request
    applySchema,
    ApplySchema,

    -- * Request Lenses
    asPublishedSchemaARN,
    asDirectoryARN,

    -- * Destructuring the Response
    applySchemaResponse,
    ApplySchemaResponse,

    -- * Response Lenses
    asrrsDirectoryARN,
    asrrsAppliedSchemaARN,
    asrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'applySchema' smart constructor.
data ApplySchema = ApplySchema'
  { _asPublishedSchemaARN ::
      !Text,
    _asDirectoryARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplySchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asPublishedSchemaARN' - Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see 'arns' .
--
-- * 'asDirectoryARN' - The Amazon Resource Name (ARN) that is associated with the 'Directory' into which the schema is copied. For more information, see 'arns' .
applySchema ::
  -- | 'asPublishedSchemaARN'
  Text ->
  -- | 'asDirectoryARN'
  Text ->
  ApplySchema
applySchema pPublishedSchemaARN_ pDirectoryARN_ =
  ApplySchema'
    { _asPublishedSchemaARN =
        pPublishedSchemaARN_,
      _asDirectoryARN = pDirectoryARN_
    }

-- | Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see 'arns' .
asPublishedSchemaARN :: Lens' ApplySchema Text
asPublishedSchemaARN = lens _asPublishedSchemaARN (\s a -> s {_asPublishedSchemaARN = a})

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' into which the schema is copied. For more information, see 'arns' .
asDirectoryARN :: Lens' ApplySchema Text
asDirectoryARN = lens _asDirectoryARN (\s a -> s {_asDirectoryARN = a})

instance AWSRequest ApplySchema where
  type Rs ApplySchema = ApplySchemaResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ApplySchemaResponse'
            <$> (x .?> "DirectoryArn")
            <*> (x .?> "AppliedSchemaArn")
            <*> (pure (fromEnum s))
      )

instance Hashable ApplySchema

instance NFData ApplySchema

instance ToHeaders ApplySchema where
  toHeaders ApplySchema' {..} =
    mconcat ["x-amz-data-partition" =# _asDirectoryARN]

instance ToJSON ApplySchema where
  toJSON ApplySchema' {..} =
    object
      ( catMaybes
          [ Just
              ("PublishedSchemaArn" .= _asPublishedSchemaARN)
          ]
      )

instance ToPath ApplySchema where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/apply"

instance ToQuery ApplySchema where
  toQuery = const mempty

-- | /See:/ 'applySchemaResponse' smart constructor.
data ApplySchemaResponse = ApplySchemaResponse'
  { _asrrsDirectoryARN ::
      !(Maybe Text),
    _asrrsAppliedSchemaARN ::
      !(Maybe Text),
    _asrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplySchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrrsDirectoryARN' - The ARN that is associated with the 'Directory' . For more information, see 'arns' .
--
-- * 'asrrsAppliedSchemaARN' - The applied schema ARN that is associated with the copied schema in the 'Directory' . You can use this ARN to describe the schema information applied on this directory. For more information, see 'arns' .
--
-- * 'asrrsResponseStatus' - -- | The response status code.
applySchemaResponse ::
  -- | 'asrrsResponseStatus'
  Int ->
  ApplySchemaResponse
applySchemaResponse pResponseStatus_ =
  ApplySchemaResponse'
    { _asrrsDirectoryARN = Nothing,
      _asrrsAppliedSchemaARN = Nothing,
      _asrrsResponseStatus = pResponseStatus_
    }

-- | The ARN that is associated with the 'Directory' . For more information, see 'arns' .
asrrsDirectoryARN :: Lens' ApplySchemaResponse (Maybe Text)
asrrsDirectoryARN = lens _asrrsDirectoryARN (\s a -> s {_asrrsDirectoryARN = a})

-- | The applied schema ARN that is associated with the copied schema in the 'Directory' . You can use this ARN to describe the schema information applied on this directory. For more information, see 'arns' .
asrrsAppliedSchemaARN :: Lens' ApplySchemaResponse (Maybe Text)
asrrsAppliedSchemaARN = lens _asrrsAppliedSchemaARN (\s a -> s {_asrrsAppliedSchemaARN = a})

-- | -- | The response status code.
asrrsResponseStatus :: Lens' ApplySchemaResponse Int
asrrsResponseStatus = lens _asrrsResponseStatus (\s a -> s {_asrrsResponseStatus = a})

instance NFData ApplySchemaResponse
