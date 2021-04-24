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
-- Module      : Network.AWS.SDB.DomainMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the domain, including when the domain was created, the number of items and attributes in the domain, and the size of the attribute names and values.
module Network.AWS.SDB.DomainMetadata
  ( -- * Creating a Request
    domainMetadata,
    DomainMetadata,

    -- * Request Lenses
    dmDomainName,

    -- * Destructuring the Response
    domainMetadataResponse,
    DomainMetadataResponse,

    -- * Response Lenses
    dmrrsAttributeNamesSizeBytes,
    dmrrsAttributeValueCount,
    dmrrsAttributeNameCount,
    dmrrsAttributeValuesSizeBytes,
    dmrrsTimestamp,
    dmrrsItemCount,
    dmrrsItemNamesSizeBytes,
    dmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SDB.Types

-- | /See:/ 'domainMetadata' smart constructor.
newtype DomainMetadata = DomainMetadata'
  { _dmDomainName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmDomainName' - The name of the domain for which to display the metadata of.
domainMetadata ::
  -- | 'dmDomainName'
  Text ->
  DomainMetadata
domainMetadata pDomainName_ =
  DomainMetadata' {_dmDomainName = pDomainName_}

-- | The name of the domain for which to display the metadata of.
dmDomainName :: Lens' DomainMetadata Text
dmDomainName = lens _dmDomainName (\s a -> s {_dmDomainName = a})

instance AWSRequest DomainMetadata where
  type Rs DomainMetadata = DomainMetadataResponse
  request = postQuery sdb
  response =
    receiveXMLWrapper
      "DomainMetadataResult"
      ( \s h x ->
          DomainMetadataResponse'
            <$> (x .@? "AttributeNamesSizeBytes")
            <*> (x .@? "AttributeValueCount")
            <*> (x .@? "AttributeNameCount")
            <*> (x .@? "AttributeValuesSizeBytes")
            <*> (x .@? "Timestamp")
            <*> (x .@? "ItemCount")
            <*> (x .@? "ItemNamesSizeBytes")
            <*> (pure (fromEnum s))
      )

instance Hashable DomainMetadata

instance NFData DomainMetadata

instance ToHeaders DomainMetadata where
  toHeaders = const mempty

instance ToPath DomainMetadata where
  toPath = const "/"

instance ToQuery DomainMetadata where
  toQuery DomainMetadata' {..} =
    mconcat
      [ "Action" =: ("DomainMetadata" :: ByteString),
        "Version" =: ("2009-04-15" :: ByteString),
        "DomainName" =: _dmDomainName
      ]

-- | /See:/ 'domainMetadataResponse' smart constructor.
data DomainMetadataResponse = DomainMetadataResponse'
  { _dmrrsAttributeNamesSizeBytes ::
      !(Maybe Integer),
    _dmrrsAttributeValueCount ::
      !(Maybe Int),
    _dmrrsAttributeNameCount ::
      !(Maybe Int),
    _dmrrsAttributeValuesSizeBytes ::
      !(Maybe Integer),
    _dmrrsTimestamp ::
      !(Maybe Int),
    _dmrrsItemCount ::
      !(Maybe Int),
    _dmrrsItemNamesSizeBytes ::
      !(Maybe Integer),
    _dmrrsResponseStatus ::
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

-- | Creates a value of 'DomainMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrrsAttributeNamesSizeBytes' - The total size of all unique attribute names in the domain, in bytes.
--
-- * 'dmrrsAttributeValueCount' - The number of all attribute name/value pairs in the domain.
--
-- * 'dmrrsAttributeNameCount' - The number of unique attribute names in the domain.
--
-- * 'dmrrsAttributeValuesSizeBytes' - The total size of all attribute values in the domain, in bytes.
--
-- * 'dmrrsTimestamp' - The data and time when metadata was calculated, in Epoch (UNIX) seconds.
--
-- * 'dmrrsItemCount' - The number of all items in the domain.
--
-- * 'dmrrsItemNamesSizeBytes' - The total size of all item names in the domain, in bytes.
--
-- * 'dmrrsResponseStatus' - -- | The response status code.
domainMetadataResponse ::
  -- | 'dmrrsResponseStatus'
  Int ->
  DomainMetadataResponse
domainMetadataResponse pResponseStatus_ =
  DomainMetadataResponse'
    { _dmrrsAttributeNamesSizeBytes =
        Nothing,
      _dmrrsAttributeValueCount = Nothing,
      _dmrrsAttributeNameCount = Nothing,
      _dmrrsAttributeValuesSizeBytes = Nothing,
      _dmrrsTimestamp = Nothing,
      _dmrrsItemCount = Nothing,
      _dmrrsItemNamesSizeBytes = Nothing,
      _dmrrsResponseStatus = pResponseStatus_
    }

-- | The total size of all unique attribute names in the domain, in bytes.
dmrrsAttributeNamesSizeBytes :: Lens' DomainMetadataResponse (Maybe Integer)
dmrrsAttributeNamesSizeBytes = lens _dmrrsAttributeNamesSizeBytes (\s a -> s {_dmrrsAttributeNamesSizeBytes = a})

-- | The number of all attribute name/value pairs in the domain.
dmrrsAttributeValueCount :: Lens' DomainMetadataResponse (Maybe Int)
dmrrsAttributeValueCount = lens _dmrrsAttributeValueCount (\s a -> s {_dmrrsAttributeValueCount = a})

-- | The number of unique attribute names in the domain.
dmrrsAttributeNameCount :: Lens' DomainMetadataResponse (Maybe Int)
dmrrsAttributeNameCount = lens _dmrrsAttributeNameCount (\s a -> s {_dmrrsAttributeNameCount = a})

-- | The total size of all attribute values in the domain, in bytes.
dmrrsAttributeValuesSizeBytes :: Lens' DomainMetadataResponse (Maybe Integer)
dmrrsAttributeValuesSizeBytes = lens _dmrrsAttributeValuesSizeBytes (\s a -> s {_dmrrsAttributeValuesSizeBytes = a})

-- | The data and time when metadata was calculated, in Epoch (UNIX) seconds.
dmrrsTimestamp :: Lens' DomainMetadataResponse (Maybe Int)
dmrrsTimestamp = lens _dmrrsTimestamp (\s a -> s {_dmrrsTimestamp = a})

-- | The number of all items in the domain.
dmrrsItemCount :: Lens' DomainMetadataResponse (Maybe Int)
dmrrsItemCount = lens _dmrrsItemCount (\s a -> s {_dmrrsItemCount = a})

-- | The total size of all item names in the domain, in bytes.
dmrrsItemNamesSizeBytes :: Lens' DomainMetadataResponse (Maybe Integer)
dmrrsItemNamesSizeBytes = lens _dmrrsItemNamesSizeBytes (\s a -> s {_dmrrsItemNamesSizeBytes = a})

-- | -- | The response status code.
dmrrsResponseStatus :: Lens' DomainMetadataResponse Int
dmrrsResponseStatus = lens _dmrrsResponseStatus (\s a -> s {_dmrrsResponseStatus = a})

instance NFData DomainMetadataResponse
