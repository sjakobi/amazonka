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
-- Module      : Network.AWS.CloudDirectory.CreateIndex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an index object. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html Indexing and search> for more information.
module Network.AWS.CloudDirectory.CreateIndex
  ( -- * Creating a Request
    createIndex,
    CreateIndex,

    -- * Request Lenses
    ciParentReference,
    ciLinkName,
    ciDirectoryARN,
    ciOrderedIndexedAttributeList,
    ciIsUnique,

    -- * Destructuring the Response
    createIndexResponse,
    CreateIndexResponse,

    -- * Response Lenses
    cirrsObjectIdentifier,
    cirrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createIndex' smart constructor.
data CreateIndex = CreateIndex'
  { _ciParentReference ::
      !(Maybe ObjectReference),
    _ciLinkName :: !(Maybe Text),
    _ciDirectoryARN :: !Text,
    _ciOrderedIndexedAttributeList ::
      ![AttributeKey],
    _ciIsUnique :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateIndex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciParentReference' - A reference to the parent object that contains the index object.
--
-- * 'ciLinkName' - The name of the link between the parent object and the index object.
--
-- * 'ciDirectoryARN' - The ARN of the directory where the index should be created.
--
-- * 'ciOrderedIndexedAttributeList' - Specifies the attributes that should be indexed on. Currently only a single attribute is supported.
--
-- * 'ciIsUnique' - Indicates whether the attribute that is being indexed has unique values or not.
createIndex ::
  -- | 'ciDirectoryARN'
  Text ->
  -- | 'ciIsUnique'
  Bool ->
  CreateIndex
createIndex pDirectoryARN_ pIsUnique_ =
  CreateIndex'
    { _ciParentReference = Nothing,
      _ciLinkName = Nothing,
      _ciDirectoryARN = pDirectoryARN_,
      _ciOrderedIndexedAttributeList = mempty,
      _ciIsUnique = pIsUnique_
    }

-- | A reference to the parent object that contains the index object.
ciParentReference :: Lens' CreateIndex (Maybe ObjectReference)
ciParentReference = lens _ciParentReference (\s a -> s {_ciParentReference = a})

-- | The name of the link between the parent object and the index object.
ciLinkName :: Lens' CreateIndex (Maybe Text)
ciLinkName = lens _ciLinkName (\s a -> s {_ciLinkName = a})

-- | The ARN of the directory where the index should be created.
ciDirectoryARN :: Lens' CreateIndex Text
ciDirectoryARN = lens _ciDirectoryARN (\s a -> s {_ciDirectoryARN = a})

-- | Specifies the attributes that should be indexed on. Currently only a single attribute is supported.
ciOrderedIndexedAttributeList :: Lens' CreateIndex [AttributeKey]
ciOrderedIndexedAttributeList = lens _ciOrderedIndexedAttributeList (\s a -> s {_ciOrderedIndexedAttributeList = a}) . _Coerce

-- | Indicates whether the attribute that is being indexed has unique values or not.
ciIsUnique :: Lens' CreateIndex Bool
ciIsUnique = lens _ciIsUnique (\s a -> s {_ciIsUnique = a})

instance AWSRequest CreateIndex where
  type Rs CreateIndex = CreateIndexResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          CreateIndexResponse'
            <$> (x .?> "ObjectIdentifier") <*> (pure (fromEnum s))
      )

instance Hashable CreateIndex

instance NFData CreateIndex

instance ToHeaders CreateIndex where
  toHeaders CreateIndex' {..} =
    mconcat ["x-amz-data-partition" =# _ciDirectoryARN]

instance ToJSON CreateIndex where
  toJSON CreateIndex' {..} =
    object
      ( catMaybes
          [ ("ParentReference" .=) <$> _ciParentReference,
            ("LinkName" .=) <$> _ciLinkName,
            Just
              ( "OrderedIndexedAttributeList"
                  .= _ciOrderedIndexedAttributeList
              ),
            Just ("IsUnique" .= _ciIsUnique)
          ]
      )

instance ToPath CreateIndex where
  toPath =
    const "/amazonclouddirectory/2017-01-11/index"

instance ToQuery CreateIndex where
  toQuery = const mempty

-- | /See:/ 'createIndexResponse' smart constructor.
data CreateIndexResponse = CreateIndexResponse'
  { _cirrsObjectIdentifier ::
      !(Maybe Text),
    _cirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateIndexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirrsObjectIdentifier' - The @ObjectIdentifier@ of the index created by this operation.
--
-- * 'cirrsResponseStatus' - -- | The response status code.
createIndexResponse ::
  -- | 'cirrsResponseStatus'
  Int ->
  CreateIndexResponse
createIndexResponse pResponseStatus_ =
  CreateIndexResponse'
    { _cirrsObjectIdentifier =
        Nothing,
      _cirrsResponseStatus = pResponseStatus_
    }

-- | The @ObjectIdentifier@ of the index created by this operation.
cirrsObjectIdentifier :: Lens' CreateIndexResponse (Maybe Text)
cirrsObjectIdentifier = lens _cirrsObjectIdentifier (\s a -> s {_cirrsObjectIdentifier = a})

-- | -- | The response status code.
cirrsResponseStatus :: Lens' CreateIndexResponse Int
cirrsResponseStatus = lens _cirrsResponseStatus (\s a -> s {_cirrsResponseStatus = a})

instance NFData CreateIndexResponse
