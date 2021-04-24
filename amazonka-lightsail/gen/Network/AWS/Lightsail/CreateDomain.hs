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
-- Module      : Network.AWS.Lightsail.CreateDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a domain resource for the specified domain (e.g., example.com).
--
--
-- The @create domain@ operation supports tag-based access control via request tags. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.CreateDomain
  ( -- * Creating a Request
    createDomain,
    CreateDomain,

    -- * Request Lenses
    cdTags,
    cdDomainName,

    -- * Destructuring the Response
    createDomainResponse,
    CreateDomainResponse,

    -- * Response Lenses
    crsOperation,
    crsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDomain' smart constructor.
data CreateDomain = CreateDomain'
  { _cdTags ::
      !(Maybe [Tag]),
    _cdDomainName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdTags' - The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
--
-- * 'cdDomainName' - The domain name to manage (e.g., @example.com@ ).
createDomain ::
  -- | 'cdDomainName'
  Text ->
  CreateDomain
createDomain pDomainName_ =
  CreateDomain'
    { _cdTags = Nothing,
      _cdDomainName = pDomainName_
    }

-- | The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
cdTags :: Lens' CreateDomain [Tag]
cdTags = lens _cdTags (\s a -> s {_cdTags = a}) . _Default . _Coerce

-- | The domain name to manage (e.g., @example.com@ ).
cdDomainName :: Lens' CreateDomain Text
cdDomainName = lens _cdDomainName (\s a -> s {_cdDomainName = a})

instance AWSRequest CreateDomain where
  type Rs CreateDomain = CreateDomainResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          CreateDomainResponse'
            <$> (x .?> "operation") <*> (pure (fromEnum s))
      )

instance Hashable CreateDomain

instance NFData CreateDomain

instance ToHeaders CreateDomain where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.CreateDomain" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDomain where
  toJSON CreateDomain' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _cdTags,
            Just ("domainName" .= _cdDomainName)
          ]
      )

instance ToPath CreateDomain where
  toPath = const "/"

instance ToQuery CreateDomain where
  toQuery = const mempty

-- | /See:/ 'createDomainResponse' smart constructor.
data CreateDomainResponse = CreateDomainResponse'
  { _crsOperation ::
      !(Maybe Operation),
    _crsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsOperation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'crsResponseStatus' - -- | The response status code.
createDomainResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateDomainResponse
createDomainResponse pResponseStatus_ =
  CreateDomainResponse'
    { _crsOperation = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
crsOperation :: Lens' CreateDomainResponse (Maybe Operation)
crsOperation = lens _crsOperation (\s a -> s {_crsOperation = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateDomainResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateDomainResponse
