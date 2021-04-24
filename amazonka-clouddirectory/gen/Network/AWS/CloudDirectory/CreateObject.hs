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
-- Module      : Network.AWS.CloudDirectory.CreateObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an object in a 'Directory' . Additionally attaches the object to a parent, if a parent reference and @LinkName@ is specified. An object is simply a collection of 'Facet' attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet.
module Network.AWS.CloudDirectory.CreateObject
  ( -- * Creating a Request
    createObject,
    CreateObject,

    -- * Request Lenses
    coParentReference,
    coLinkName,
    coObjectAttributeList,
    coDirectoryARN,
    coSchemaFacets,

    -- * Destructuring the Response
    createObjectResponse,
    CreateObjectResponse,

    -- * Response Lenses
    corrsObjectIdentifier,
    corrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createObject' smart constructor.
data CreateObject = CreateObject'
  { _coParentReference ::
      !(Maybe ObjectReference),
    _coLinkName :: !(Maybe Text),
    _coObjectAttributeList ::
      !(Maybe [AttributeKeyAndValue]),
    _coDirectoryARN :: !Text,
    _coSchemaFacets :: ![SchemaFacet]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coParentReference' - If specified, the parent reference to which this object will be attached.
--
-- * 'coLinkName' - The name of link that is used to attach this object to a parent.
--
-- * 'coObjectAttributeList' - The attribute map whose attribute ARN contains the key and attribute value as the map value.
--
-- * 'coDirectoryARN' - The Amazon Resource Name (ARN) that is associated with the 'Directory' in which the object will be created. For more information, see 'arns' .
--
-- * 'coSchemaFacets' - A list of schema facets to be associated with the object. Do not provide minor version components. See 'SchemaFacet' for details.
createObject ::
  -- | 'coDirectoryARN'
  Text ->
  CreateObject
createObject pDirectoryARN_ =
  CreateObject'
    { _coParentReference = Nothing,
      _coLinkName = Nothing,
      _coObjectAttributeList = Nothing,
      _coDirectoryARN = pDirectoryARN_,
      _coSchemaFacets = mempty
    }

-- | If specified, the parent reference to which this object will be attached.
coParentReference :: Lens' CreateObject (Maybe ObjectReference)
coParentReference = lens _coParentReference (\s a -> s {_coParentReference = a})

-- | The name of link that is used to attach this object to a parent.
coLinkName :: Lens' CreateObject (Maybe Text)
coLinkName = lens _coLinkName (\s a -> s {_coLinkName = a})

-- | The attribute map whose attribute ARN contains the key and attribute value as the map value.
coObjectAttributeList :: Lens' CreateObject [AttributeKeyAndValue]
coObjectAttributeList = lens _coObjectAttributeList (\s a -> s {_coObjectAttributeList = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' in which the object will be created. For more information, see 'arns' .
coDirectoryARN :: Lens' CreateObject Text
coDirectoryARN = lens _coDirectoryARN (\s a -> s {_coDirectoryARN = a})

-- | A list of schema facets to be associated with the object. Do not provide minor version components. See 'SchemaFacet' for details.
coSchemaFacets :: Lens' CreateObject [SchemaFacet]
coSchemaFacets = lens _coSchemaFacets (\s a -> s {_coSchemaFacets = a}) . _Coerce

instance AWSRequest CreateObject where
  type Rs CreateObject = CreateObjectResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          CreateObjectResponse'
            <$> (x .?> "ObjectIdentifier") <*> (pure (fromEnum s))
      )

instance Hashable CreateObject

instance NFData CreateObject

instance ToHeaders CreateObject where
  toHeaders CreateObject' {..} =
    mconcat ["x-amz-data-partition" =# _coDirectoryARN]

instance ToJSON CreateObject where
  toJSON CreateObject' {..} =
    object
      ( catMaybes
          [ ("ParentReference" .=) <$> _coParentReference,
            ("LinkName" .=) <$> _coLinkName,
            ("ObjectAttributeList" .=)
              <$> _coObjectAttributeList,
            Just ("SchemaFacets" .= _coSchemaFacets)
          ]
      )

instance ToPath CreateObject where
  toPath =
    const "/amazonclouddirectory/2017-01-11/object"

instance ToQuery CreateObject where
  toQuery = const mempty

-- | /See:/ 'createObjectResponse' smart constructor.
data CreateObjectResponse = CreateObjectResponse'
  { _corrsObjectIdentifier ::
      !(Maybe Text),
    _corrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateObjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corrsObjectIdentifier' - The identifier that is associated with the object.
--
-- * 'corrsResponseStatus' - -- | The response status code.
createObjectResponse ::
  -- | 'corrsResponseStatus'
  Int ->
  CreateObjectResponse
createObjectResponse pResponseStatus_ =
  CreateObjectResponse'
    { _corrsObjectIdentifier =
        Nothing,
      _corrsResponseStatus = pResponseStatus_
    }

-- | The identifier that is associated with the object.
corrsObjectIdentifier :: Lens' CreateObjectResponse (Maybe Text)
corrsObjectIdentifier = lens _corrsObjectIdentifier (\s a -> s {_corrsObjectIdentifier = a})

-- | -- | The response status code.
corrsResponseStatus :: Lens' CreateObjectResponse Int
corrsResponseStatus = lens _corrsResponseStatus (\s a -> s {_corrsResponseStatus = a})

instance NFData CreateObjectResponse
