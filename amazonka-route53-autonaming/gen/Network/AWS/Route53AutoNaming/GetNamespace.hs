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
-- Module      : Network.AWS.Route53AutoNaming.GetNamespace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a namespace.
module Network.AWS.Route53AutoNaming.GetNamespace
  ( -- * Creating a Request
    getNamespace,
    GetNamespace,

    -- * Request Lenses
    gnId,

    -- * Destructuring the Response
    getNamespaceResponse,
    GetNamespaceResponse,

    -- * Response Lenses
    gnrrsNamespace,
    gnrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'getNamespace' smart constructor.
newtype GetNamespace = GetNamespace' {_gnId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetNamespace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnId' - The ID of the namespace that you want to get information about.
getNamespace ::
  -- | 'gnId'
  Text ->
  GetNamespace
getNamespace pId_ = GetNamespace' {_gnId = pId_}

-- | The ID of the namespace that you want to get information about.
gnId :: Lens' GetNamespace Text
gnId = lens _gnId (\s a -> s {_gnId = a})

instance AWSRequest GetNamespace where
  type Rs GetNamespace = GetNamespaceResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          GetNamespaceResponse'
            <$> (x .?> "Namespace") <*> (pure (fromEnum s))
      )

instance Hashable GetNamespace

instance NFData GetNamespace

instance ToHeaders GetNamespace where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.GetNamespace" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetNamespace where
  toJSON GetNamespace' {..} =
    object (catMaybes [Just ("Id" .= _gnId)])

instance ToPath GetNamespace where
  toPath = const "/"

instance ToQuery GetNamespace where
  toQuery = const mempty

-- | /See:/ 'getNamespaceResponse' smart constructor.
data GetNamespaceResponse = GetNamespaceResponse'
  { _gnrrsNamespace ::
      !(Maybe Namespace),
    _gnrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetNamespaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnrrsNamespace' - A complex type that contains information about the specified namespace.
--
-- * 'gnrrsResponseStatus' - -- | The response status code.
getNamespaceResponse ::
  -- | 'gnrrsResponseStatus'
  Int ->
  GetNamespaceResponse
getNamespaceResponse pResponseStatus_ =
  GetNamespaceResponse'
    { _gnrrsNamespace = Nothing,
      _gnrrsResponseStatus = pResponseStatus_
    }

-- | A complex type that contains information about the specified namespace.
gnrrsNamespace :: Lens' GetNamespaceResponse (Maybe Namespace)
gnrrsNamespace = lens _gnrrsNamespace (\s a -> s {_gnrrsNamespace = a})

-- | -- | The response status code.
gnrrsResponseStatus :: Lens' GetNamespaceResponse Int
gnrrsResponseStatus = lens _gnrrsResponseStatus (\s a -> s {_gnrrsResponseStatus = a})

instance NFData GetNamespaceResponse
