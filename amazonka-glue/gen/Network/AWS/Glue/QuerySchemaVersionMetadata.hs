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
-- Module      : Network.AWS.Glue.QuerySchemaVersionMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries for the schema version metadata information.
module Network.AWS.Glue.QuerySchemaVersionMetadata
  ( -- * Creating a Request
    querySchemaVersionMetadata,
    QuerySchemaVersionMetadata,

    -- * Request Lenses
    qsvmNextToken,
    qsvmSchemaVersionId,
    qsvmMaxResults,
    qsvmSchemaVersionNumber,
    qsvmMetadataList,
    qsvmSchemaId,

    -- * Destructuring the Response
    querySchemaVersionMetadataResponse,
    QuerySchemaVersionMetadataResponse,

    -- * Response Lenses
    qsvmrrsMetadataInfoMap,
    qsvmrrsNextToken,
    qsvmrrsSchemaVersionId,
    qsvmrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'querySchemaVersionMetadata' smart constructor.
data QuerySchemaVersionMetadata = QuerySchemaVersionMetadata'
  { _qsvmNextToken ::
      !(Maybe Text),
    _qsvmSchemaVersionId ::
      !(Maybe Text),
    _qsvmMaxResults ::
      !(Maybe Nat),
    _qsvmSchemaVersionNumber ::
      !( Maybe
           SchemaVersionNumber
       ),
    _qsvmMetadataList ::
      !( Maybe
           [MetadataKeyValuePair]
       ),
    _qsvmSchemaId ::
      !(Maybe SchemaId)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'QuerySchemaVersionMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsvmNextToken' - A continuation token, if this is a continuation call.
--
-- * 'qsvmSchemaVersionId' - The unique version ID of the schema version.
--
-- * 'qsvmMaxResults' - Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.
--
-- * 'qsvmSchemaVersionNumber' - The version number of the schema.
--
-- * 'qsvmMetadataList' - Search key-value pairs for metadata, if they are not provided all the metadata information will be fetched.
--
-- * 'qsvmSchemaId' - A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).
querySchemaVersionMetadata ::
  QuerySchemaVersionMetadata
querySchemaVersionMetadata =
  QuerySchemaVersionMetadata'
    { _qsvmNextToken =
        Nothing,
      _qsvmSchemaVersionId = Nothing,
      _qsvmMaxResults = Nothing,
      _qsvmSchemaVersionNumber = Nothing,
      _qsvmMetadataList = Nothing,
      _qsvmSchemaId = Nothing
    }

-- | A continuation token, if this is a continuation call.
qsvmNextToken :: Lens' QuerySchemaVersionMetadata (Maybe Text)
qsvmNextToken = lens _qsvmNextToken (\s a -> s {_qsvmNextToken = a})

-- | The unique version ID of the schema version.
qsvmSchemaVersionId :: Lens' QuerySchemaVersionMetadata (Maybe Text)
qsvmSchemaVersionId = lens _qsvmSchemaVersionId (\s a -> s {_qsvmSchemaVersionId = a})

-- | Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.
qsvmMaxResults :: Lens' QuerySchemaVersionMetadata (Maybe Natural)
qsvmMaxResults = lens _qsvmMaxResults (\s a -> s {_qsvmMaxResults = a}) . mapping _Nat

-- | The version number of the schema.
qsvmSchemaVersionNumber :: Lens' QuerySchemaVersionMetadata (Maybe SchemaVersionNumber)
qsvmSchemaVersionNumber = lens _qsvmSchemaVersionNumber (\s a -> s {_qsvmSchemaVersionNumber = a})

-- | Search key-value pairs for metadata, if they are not provided all the metadata information will be fetched.
qsvmMetadataList :: Lens' QuerySchemaVersionMetadata [MetadataKeyValuePair]
qsvmMetadataList = lens _qsvmMetadataList (\s a -> s {_qsvmMetadataList = a}) . _Default . _Coerce

-- | A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).
qsvmSchemaId :: Lens' QuerySchemaVersionMetadata (Maybe SchemaId)
qsvmSchemaId = lens _qsvmSchemaId (\s a -> s {_qsvmSchemaId = a})

instance AWSRequest QuerySchemaVersionMetadata where
  type
    Rs QuerySchemaVersionMetadata =
      QuerySchemaVersionMetadataResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          QuerySchemaVersionMetadataResponse'
            <$> (x .?> "MetadataInfoMap" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (x .?> "SchemaVersionId")
            <*> (pure (fromEnum s))
      )

instance Hashable QuerySchemaVersionMetadata

instance NFData QuerySchemaVersionMetadata

instance ToHeaders QuerySchemaVersionMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.QuerySchemaVersionMetadata" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON QuerySchemaVersionMetadata where
  toJSON QuerySchemaVersionMetadata' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _qsvmNextToken,
            ("SchemaVersionId" .=) <$> _qsvmSchemaVersionId,
            ("MaxResults" .=) <$> _qsvmMaxResults,
            ("SchemaVersionNumber" .=)
              <$> _qsvmSchemaVersionNumber,
            ("MetadataList" .=) <$> _qsvmMetadataList,
            ("SchemaId" .=) <$> _qsvmSchemaId
          ]
      )

instance ToPath QuerySchemaVersionMetadata where
  toPath = const "/"

instance ToQuery QuerySchemaVersionMetadata where
  toQuery = const mempty

-- | /See:/ 'querySchemaVersionMetadataResponse' smart constructor.
data QuerySchemaVersionMetadataResponse = QuerySchemaVersionMetadataResponse'
  { _qsvmrrsMetadataInfoMap ::
      !( Maybe
           ( Map
               Text
               MetadataInfo
           )
       ),
    _qsvmrrsNextToken ::
      !( Maybe
           Text
       ),
    _qsvmrrsSchemaVersionId ::
      !( Maybe
           Text
       ),
    _qsvmrrsResponseStatus ::
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

-- | Creates a value of 'QuerySchemaVersionMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsvmrrsMetadataInfoMap' - A map of a metadata key and associated values.
--
-- * 'qsvmrrsNextToken' - A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.
--
-- * 'qsvmrrsSchemaVersionId' - The unique version ID of the schema version.
--
-- * 'qsvmrrsResponseStatus' - -- | The response status code.
querySchemaVersionMetadataResponse ::
  -- | 'qsvmrrsResponseStatus'
  Int ->
  QuerySchemaVersionMetadataResponse
querySchemaVersionMetadataResponse pResponseStatus_ =
  QuerySchemaVersionMetadataResponse'
    { _qsvmrrsMetadataInfoMap =
        Nothing,
      _qsvmrrsNextToken = Nothing,
      _qsvmrrsSchemaVersionId = Nothing,
      _qsvmrrsResponseStatus =
        pResponseStatus_
    }

-- | A map of a metadata key and associated values.
qsvmrrsMetadataInfoMap :: Lens' QuerySchemaVersionMetadataResponse (HashMap Text MetadataInfo)
qsvmrrsMetadataInfoMap = lens _qsvmrrsMetadataInfoMap (\s a -> s {_qsvmrrsMetadataInfoMap = a}) . _Default . _Map

-- | A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.
qsvmrrsNextToken :: Lens' QuerySchemaVersionMetadataResponse (Maybe Text)
qsvmrrsNextToken = lens _qsvmrrsNextToken (\s a -> s {_qsvmrrsNextToken = a})

-- | The unique version ID of the schema version.
qsvmrrsSchemaVersionId :: Lens' QuerySchemaVersionMetadataResponse (Maybe Text)
qsvmrrsSchemaVersionId = lens _qsvmrrsSchemaVersionId (\s a -> s {_qsvmrrsSchemaVersionId = a})

-- | -- | The response status code.
qsvmrrsResponseStatus :: Lens' QuerySchemaVersionMetadataResponse Int
qsvmrrsResponseStatus = lens _qsvmrrsResponseStatus (\s a -> s {_qsvmrrsResponseStatus = a})

instance NFData QuerySchemaVersionMetadataResponse
