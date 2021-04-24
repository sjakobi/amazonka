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
-- Module      : Network.AWS.SDB.GetAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all of the attributes associated with the specified item. Optionally, the attributes returned can be limited to one or more attributes by specifying an attribute name parameter.
--
--
-- If the item does not exist on the replica that was accessed for this operation, an empty set is returned. The system does not return an error as it cannot guarantee the item does not exist on other replicas.
module Network.AWS.SDB.GetAttributes
  ( -- * Creating a Request
    getAttributes,
    GetAttributes,

    -- * Request Lenses
    gaConsistentRead,
    gaAttributeNames,
    gaDomainName,
    gaItemName,

    -- * Destructuring the Response
    getAttributesResponse,
    GetAttributesResponse,

    -- * Response Lenses
    garrsAttributes,
    garrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SDB.Types

-- | /See:/ 'getAttributes' smart constructor.
data GetAttributes = GetAttributes'
  { _gaConsistentRead ::
      !(Maybe Bool),
    _gaAttributeNames :: !(Maybe [Text]),
    _gaDomainName :: !Text,
    _gaItemName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaConsistentRead' - @true@
--
-- * 'gaAttributeNames' - The names of the attributes.
--
-- * 'gaDomainName' - The name of the domain in which to perform the operation.
--
-- * 'gaItemName' - The name of the item.
getAttributes ::
  -- | 'gaDomainName'
  Text ->
  -- | 'gaItemName'
  Text ->
  GetAttributes
getAttributes pDomainName_ pItemName_ =
  GetAttributes'
    { _gaConsistentRead = Nothing,
      _gaAttributeNames = Nothing,
      _gaDomainName = pDomainName_,
      _gaItemName = pItemName_
    }

-- | @true@
gaConsistentRead :: Lens' GetAttributes (Maybe Bool)
gaConsistentRead = lens _gaConsistentRead (\s a -> s {_gaConsistentRead = a})

-- | The names of the attributes.
gaAttributeNames :: Lens' GetAttributes [Text]
gaAttributeNames = lens _gaAttributeNames (\s a -> s {_gaAttributeNames = a}) . _Default . _Coerce

-- | The name of the domain in which to perform the operation.
gaDomainName :: Lens' GetAttributes Text
gaDomainName = lens _gaDomainName (\s a -> s {_gaDomainName = a})

-- | The name of the item.
gaItemName :: Lens' GetAttributes Text
gaItemName = lens _gaItemName (\s a -> s {_gaItemName = a})

instance AWSRequest GetAttributes where
  type Rs GetAttributes = GetAttributesResponse
  request = postQuery sdb
  response =
    receiveXMLWrapper
      "GetAttributesResult"
      ( \s h x ->
          GetAttributesResponse'
            <$> (may (parseXMLList "Attribute") x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetAttributes

instance NFData GetAttributes

instance ToHeaders GetAttributes where
  toHeaders = const mempty

instance ToPath GetAttributes where
  toPath = const "/"

instance ToQuery GetAttributes where
  toQuery GetAttributes' {..} =
    mconcat
      [ "Action" =: ("GetAttributes" :: ByteString),
        "Version" =: ("2009-04-15" :: ByteString),
        "ConsistentRead" =: _gaConsistentRead,
        toQuery
          (toQueryList "AttributeName" <$> _gaAttributeNames),
        "DomainName" =: _gaDomainName,
        "ItemName" =: _gaItemName
      ]

-- | /See:/ 'getAttributesResponse' smart constructor.
data GetAttributesResponse = GetAttributesResponse'
  { _garrsAttributes ::
      !(Maybe [Attribute]),
    _garrsResponseStatus ::
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

-- | Creates a value of 'GetAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garrsAttributes' - The list of attributes returned by the operation.
--
-- * 'garrsResponseStatus' - -- | The response status code.
getAttributesResponse ::
  -- | 'garrsResponseStatus'
  Int ->
  GetAttributesResponse
getAttributesResponse pResponseStatus_ =
  GetAttributesResponse'
    { _garrsAttributes = Nothing,
      _garrsResponseStatus = pResponseStatus_
    }

-- | The list of attributes returned by the operation.
garrsAttributes :: Lens' GetAttributesResponse [Attribute]
garrsAttributes = lens _garrsAttributes (\s a -> s {_garrsAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
garrsResponseStatus :: Lens' GetAttributesResponse Int
garrsResponseStatus = lens _garrsResponseStatus (\s a -> s {_garrsResponseStatus = a})

instance NFData GetAttributesResponse
