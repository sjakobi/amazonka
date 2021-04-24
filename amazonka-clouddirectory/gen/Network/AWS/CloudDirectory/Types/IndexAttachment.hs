{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.IndexAttachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.IndexAttachment where

import Network.AWS.CloudDirectory.Types.AttributeKeyAndValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an index and an attached object.
--
--
--
-- /See:/ 'indexAttachment' smart constructor.
data IndexAttachment = IndexAttachment'
  { _iaObjectIdentifier ::
      !(Maybe Text),
    _iaIndexedAttributes ::
      !(Maybe [AttributeKeyAndValue])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IndexAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaObjectIdentifier' - In response to 'ListIndex' , the @ObjectIdentifier@ of the object attached to the index. In response to 'ListAttachedIndices' , the @ObjectIdentifier@ of the index attached to the object. This field will always contain the @ObjectIdentifier@ of the object on the opposite side of the attachment specified in the query.
--
-- * 'iaIndexedAttributes' - The indexed attribute values.
indexAttachment ::
  IndexAttachment
indexAttachment =
  IndexAttachment'
    { _iaObjectIdentifier = Nothing,
      _iaIndexedAttributes = Nothing
    }

-- | In response to 'ListIndex' , the @ObjectIdentifier@ of the object attached to the index. In response to 'ListAttachedIndices' , the @ObjectIdentifier@ of the index attached to the object. This field will always contain the @ObjectIdentifier@ of the object on the opposite side of the attachment specified in the query.
iaObjectIdentifier :: Lens' IndexAttachment (Maybe Text)
iaObjectIdentifier = lens _iaObjectIdentifier (\s a -> s {_iaObjectIdentifier = a})

-- | The indexed attribute values.
iaIndexedAttributes :: Lens' IndexAttachment [AttributeKeyAndValue]
iaIndexedAttributes = lens _iaIndexedAttributes (\s a -> s {_iaIndexedAttributes = a}) . _Default . _Coerce

instance FromJSON IndexAttachment where
  parseJSON =
    withObject
      "IndexAttachment"
      ( \x ->
          IndexAttachment'
            <$> (x .:? "ObjectIdentifier")
            <*> (x .:? "IndexedAttributes" .!= mempty)
      )

instance Hashable IndexAttachment

instance NFData IndexAttachment
