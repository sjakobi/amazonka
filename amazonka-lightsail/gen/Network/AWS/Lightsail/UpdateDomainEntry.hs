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
-- Module      : Network.AWS.Lightsail.UpdateDomainEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a domain recordset after it is created.
--
--
-- The @update domain entry@ operation supports tag-based access control via resource tags applied to the resource identified by @domain name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.UpdateDomainEntry
  ( -- * Creating a Request
    updateDomainEntry,
    UpdateDomainEntry,

    -- * Request Lenses
    udeDomainName,
    udeDomainEntry,

    -- * Destructuring the Response
    updateDomainEntryResponse,
    UpdateDomainEntryResponse,

    -- * Response Lenses
    uderrsOperations,
    uderrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateDomainEntry' smart constructor.
data UpdateDomainEntry = UpdateDomainEntry'
  { _udeDomainName ::
      !Text,
    _udeDomainEntry :: !DomainEntry
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDomainEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udeDomainName' - The name of the domain recordset to update.
--
-- * 'udeDomainEntry' - An array of key-value pairs containing information about the domain entry.
updateDomainEntry ::
  -- | 'udeDomainName'
  Text ->
  -- | 'udeDomainEntry'
  DomainEntry ->
  UpdateDomainEntry
updateDomainEntry pDomainName_ pDomainEntry_ =
  UpdateDomainEntry'
    { _udeDomainName = pDomainName_,
      _udeDomainEntry = pDomainEntry_
    }

-- | The name of the domain recordset to update.
udeDomainName :: Lens' UpdateDomainEntry Text
udeDomainName = lens _udeDomainName (\s a -> s {_udeDomainName = a})

-- | An array of key-value pairs containing information about the domain entry.
udeDomainEntry :: Lens' UpdateDomainEntry DomainEntry
udeDomainEntry = lens _udeDomainEntry (\s a -> s {_udeDomainEntry = a})

instance AWSRequest UpdateDomainEntry where
  type Rs UpdateDomainEntry = UpdateDomainEntryResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          UpdateDomainEntryResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateDomainEntry

instance NFData UpdateDomainEntry

instance ToHeaders UpdateDomainEntry where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.UpdateDomainEntry" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDomainEntry where
  toJSON UpdateDomainEntry' {..} =
    object
      ( catMaybes
          [ Just ("domainName" .= _udeDomainName),
            Just ("domainEntry" .= _udeDomainEntry)
          ]
      )

instance ToPath UpdateDomainEntry where
  toPath = const "/"

instance ToQuery UpdateDomainEntry where
  toQuery = const mempty

-- | /See:/ 'updateDomainEntryResponse' smart constructor.
data UpdateDomainEntryResponse = UpdateDomainEntryResponse'
  { _uderrsOperations ::
      !( Maybe
           [Operation]
       ),
    _uderrsResponseStatus ::
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

-- | Creates a value of 'UpdateDomainEntryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uderrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'uderrsResponseStatus' - -- | The response status code.
updateDomainEntryResponse ::
  -- | 'uderrsResponseStatus'
  Int ->
  UpdateDomainEntryResponse
updateDomainEntryResponse pResponseStatus_ =
  UpdateDomainEntryResponse'
    { _uderrsOperations =
        Nothing,
      _uderrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
uderrsOperations :: Lens' UpdateDomainEntryResponse [Operation]
uderrsOperations = lens _uderrsOperations (\s a -> s {_uderrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
uderrsResponseStatus :: Lens' UpdateDomainEntryResponse Int
uderrsResponseStatus = lens _uderrsResponseStatus (\s a -> s {_uderrsResponseStatus = a})

instance NFData UpdateDomainEntryResponse
