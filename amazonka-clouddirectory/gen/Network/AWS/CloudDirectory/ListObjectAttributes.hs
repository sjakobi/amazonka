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
-- Module      : Network.AWS.CloudDirectory.ListObjectAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all attributes that are associated with an object.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListObjectAttributes
  ( -- * Creating a Request
    listObjectAttributes,
    ListObjectAttributes,

    -- * Request Lenses
    loaNextToken,
    loaMaxResults,
    loaConsistencyLevel,
    loaFacetFilter,
    loaDirectoryARN,
    loaObjectReference,

    -- * Destructuring the Response
    listObjectAttributesResponse,
    ListObjectAttributesResponse,

    -- * Response Lenses
    loarrsNextToken,
    loarrsAttributes,
    loarrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listObjectAttributes' smart constructor.
data ListObjectAttributes = ListObjectAttributes'
  { _loaNextToken ::
      !(Maybe Text),
    _loaMaxResults ::
      !(Maybe Nat),
    _loaConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _loaFacetFilter ::
      !(Maybe SchemaFacet),
    _loaDirectoryARN :: !Text,
    _loaObjectReference ::
      !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListObjectAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loaNextToken' - The pagination token.
--
-- * 'loaMaxResults' - The maximum number of items to be retrieved in a single call. This is an approximate number.
--
-- * 'loaConsistencyLevel' - Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
--
-- * 'loaFacetFilter' - Used to filter the list of object attributes that are associated with a certain facet.
--
-- * 'loaDirectoryARN' - The Amazon Resource Name (ARN) that is associated with the 'Directory' where the object resides. For more information, see 'arns' .
--
-- * 'loaObjectReference' - The reference that identifies the object whose attributes will be listed.
listObjectAttributes ::
  -- | 'loaDirectoryARN'
  Text ->
  -- | 'loaObjectReference'
  ObjectReference ->
  ListObjectAttributes
listObjectAttributes pDirectoryARN_ pObjectReference_ =
  ListObjectAttributes'
    { _loaNextToken = Nothing,
      _loaMaxResults = Nothing,
      _loaConsistencyLevel = Nothing,
      _loaFacetFilter = Nothing,
      _loaDirectoryARN = pDirectoryARN_,
      _loaObjectReference = pObjectReference_
    }

-- | The pagination token.
loaNextToken :: Lens' ListObjectAttributes (Maybe Text)
loaNextToken = lens _loaNextToken (\s a -> s {_loaNextToken = a})

-- | The maximum number of items to be retrieved in a single call. This is an approximate number.
loaMaxResults :: Lens' ListObjectAttributes (Maybe Natural)
loaMaxResults = lens _loaMaxResults (\s a -> s {_loaMaxResults = a}) . mapping _Nat

-- | Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
loaConsistencyLevel :: Lens' ListObjectAttributes (Maybe ConsistencyLevel)
loaConsistencyLevel = lens _loaConsistencyLevel (\s a -> s {_loaConsistencyLevel = a})

-- | Used to filter the list of object attributes that are associated with a certain facet.
loaFacetFilter :: Lens' ListObjectAttributes (Maybe SchemaFacet)
loaFacetFilter = lens _loaFacetFilter (\s a -> s {_loaFacetFilter = a})

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' where the object resides. For more information, see 'arns' .
loaDirectoryARN :: Lens' ListObjectAttributes Text
loaDirectoryARN = lens _loaDirectoryARN (\s a -> s {_loaDirectoryARN = a})

-- | The reference that identifies the object whose attributes will be listed.
loaObjectReference :: Lens' ListObjectAttributes ObjectReference
loaObjectReference = lens _loaObjectReference (\s a -> s {_loaObjectReference = a})

instance AWSPager ListObjectAttributes where
  page rq rs
    | stop (rs ^. loarrsNextToken) = Nothing
    | stop (rs ^. loarrsAttributes) = Nothing
    | otherwise =
      Just $ rq & loaNextToken .~ rs ^. loarrsNextToken

instance AWSRequest ListObjectAttributes where
  type
    Rs ListObjectAttributes =
      ListObjectAttributesResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListObjectAttributesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Attributes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListObjectAttributes

instance NFData ListObjectAttributes

instance ToHeaders ListObjectAttributes where
  toHeaders ListObjectAttributes' {..} =
    mconcat
      [ "x-amz-consistency-level" =# _loaConsistencyLevel,
        "x-amz-data-partition" =# _loaDirectoryARN
      ]

instance ToJSON ListObjectAttributes where
  toJSON ListObjectAttributes' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _loaNextToken,
            ("MaxResults" .=) <$> _loaMaxResults,
            ("FacetFilter" .=) <$> _loaFacetFilter,
            Just ("ObjectReference" .= _loaObjectReference)
          ]
      )

instance ToPath ListObjectAttributes where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/object/attributes"

instance ToQuery ListObjectAttributes where
  toQuery = const mempty

-- | /See:/ 'listObjectAttributesResponse' smart constructor.
data ListObjectAttributesResponse = ListObjectAttributesResponse'
  { _loarrsNextToken ::
      !(Maybe Text),
    _loarrsAttributes ::
      !( Maybe
           [AttributeKeyAndValue]
       ),
    _loarrsResponseStatus ::
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

-- | Creates a value of 'ListObjectAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loarrsNextToken' - The pagination token.
--
-- * 'loarrsAttributes' - Attributes map that is associated with the object. @AttributeArn@ is the key, and attribute value is the value.
--
-- * 'loarrsResponseStatus' - -- | The response status code.
listObjectAttributesResponse ::
  -- | 'loarrsResponseStatus'
  Int ->
  ListObjectAttributesResponse
listObjectAttributesResponse pResponseStatus_ =
  ListObjectAttributesResponse'
    { _loarrsNextToken =
        Nothing,
      _loarrsAttributes = Nothing,
      _loarrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
loarrsNextToken :: Lens' ListObjectAttributesResponse (Maybe Text)
loarrsNextToken = lens _loarrsNextToken (\s a -> s {_loarrsNextToken = a})

-- | Attributes map that is associated with the object. @AttributeArn@ is the key, and attribute value is the value.
loarrsAttributes :: Lens' ListObjectAttributesResponse [AttributeKeyAndValue]
loarrsAttributes = lens _loarrsAttributes (\s a -> s {_loarrsAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
loarrsResponseStatus :: Lens' ListObjectAttributesResponse Int
loarrsResponseStatus = lens _loarrsResponseStatus (\s a -> s {_loarrsResponseStatus = a})

instance NFData ListObjectAttributesResponse
