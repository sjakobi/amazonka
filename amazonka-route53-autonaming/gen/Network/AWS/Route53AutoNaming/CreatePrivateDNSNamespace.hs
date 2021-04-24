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
-- Module      : Network.AWS.Route53AutoNaming.CreatePrivateDNSNamespace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace @example.com@ and name your service @backend@ , the resulting DNS name for the service will be @backend.example.com@ . For the current quota on the number of namespaces that you can create using the same AWS account, see <https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html AWS Cloud Map Limits> in the /AWS Cloud Map Developer Guide/ .
module Network.AWS.Route53AutoNaming.CreatePrivateDNSNamespace
  ( -- * Creating a Request
    createPrivateDNSNamespace,
    CreatePrivateDNSNamespace,

    -- * Request Lenses
    cpdnsnCreatorRequestId,
    cpdnsnTags,
    cpdnsnDescription,
    cpdnsnName,
    cpdnsnVPC,

    -- * Destructuring the Response
    createPrivateDNSNamespaceResponse,
    CreatePrivateDNSNamespaceResponse,

    -- * Response Lenses
    cpdnsnrrsOperationId,
    cpdnsnrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'createPrivateDNSNamespace' smart constructor.
data CreatePrivateDNSNamespace = CreatePrivateDNSNamespace'
  { _cpdnsnCreatorRequestId ::
      !(Maybe Text),
    _cpdnsnTags ::
      !(Maybe [Tag]),
    _cpdnsnDescription ::
      !(Maybe Text),
    _cpdnsnName ::
      !Text,
    _cpdnsnVPC :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreatePrivateDNSNamespace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdnsnCreatorRequestId' - A unique string that identifies the request and that allows failed @CreatePrivateDnsNamespace@ requests to be retried without the risk of executing the operation twice. @CreatorRequestId@ can be any unique string, for example, a date/time stamp.
--
-- * 'cpdnsnTags' - The tags to add to the namespace. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
--
-- * 'cpdnsnDescription' - A description for the namespace.
--
-- * 'cpdnsnName' - The name that you want to assign to this namespace. When you create a private DNS namespace, AWS Cloud Map automatically creates an Amazon Route 53 private hosted zone that has the same name as the namespace.
--
-- * 'cpdnsnVPC' - The ID of the Amazon VPC that you want to associate the namespace with.
createPrivateDNSNamespace ::
  -- | 'cpdnsnName'
  Text ->
  -- | 'cpdnsnVPC'
  Text ->
  CreatePrivateDNSNamespace
createPrivateDNSNamespace pName_ pVPC_ =
  CreatePrivateDNSNamespace'
    { _cpdnsnCreatorRequestId =
        Nothing,
      _cpdnsnTags = Nothing,
      _cpdnsnDescription = Nothing,
      _cpdnsnName = pName_,
      _cpdnsnVPC = pVPC_
    }

-- | A unique string that identifies the request and that allows failed @CreatePrivateDnsNamespace@ requests to be retried without the risk of executing the operation twice. @CreatorRequestId@ can be any unique string, for example, a date/time stamp.
cpdnsnCreatorRequestId :: Lens' CreatePrivateDNSNamespace (Maybe Text)
cpdnsnCreatorRequestId = lens _cpdnsnCreatorRequestId (\s a -> s {_cpdnsnCreatorRequestId = a})

-- | The tags to add to the namespace. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
cpdnsnTags :: Lens' CreatePrivateDNSNamespace [Tag]
cpdnsnTags = lens _cpdnsnTags (\s a -> s {_cpdnsnTags = a}) . _Default . _Coerce

-- | A description for the namespace.
cpdnsnDescription :: Lens' CreatePrivateDNSNamespace (Maybe Text)
cpdnsnDescription = lens _cpdnsnDescription (\s a -> s {_cpdnsnDescription = a})

-- | The name that you want to assign to this namespace. When you create a private DNS namespace, AWS Cloud Map automatically creates an Amazon Route 53 private hosted zone that has the same name as the namespace.
cpdnsnName :: Lens' CreatePrivateDNSNamespace Text
cpdnsnName = lens _cpdnsnName (\s a -> s {_cpdnsnName = a})

-- | The ID of the Amazon VPC that you want to associate the namespace with.
cpdnsnVPC :: Lens' CreatePrivateDNSNamespace Text
cpdnsnVPC = lens _cpdnsnVPC (\s a -> s {_cpdnsnVPC = a})

instance AWSRequest CreatePrivateDNSNamespace where
  type
    Rs CreatePrivateDNSNamespace =
      CreatePrivateDNSNamespaceResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          CreatePrivateDNSNamespaceResponse'
            <$> (x .?> "OperationId") <*> (pure (fromEnum s))
      )

instance Hashable CreatePrivateDNSNamespace

instance NFData CreatePrivateDNSNamespace

instance ToHeaders CreatePrivateDNSNamespace where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.CreatePrivateDnsNamespace" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePrivateDNSNamespace where
  toJSON CreatePrivateDNSNamespace' {..} =
    object
      ( catMaybes
          [ ("CreatorRequestId" .=) <$> _cpdnsnCreatorRequestId,
            ("Tags" .=) <$> _cpdnsnTags,
            ("Description" .=) <$> _cpdnsnDescription,
            Just ("Name" .= _cpdnsnName),
            Just ("Vpc" .= _cpdnsnVPC)
          ]
      )

instance ToPath CreatePrivateDNSNamespace where
  toPath = const "/"

instance ToQuery CreatePrivateDNSNamespace where
  toQuery = const mempty

-- | /See:/ 'createPrivateDNSNamespaceResponse' smart constructor.
data CreatePrivateDNSNamespaceResponse = CreatePrivateDNSNamespaceResponse'
  { _cpdnsnrrsOperationId ::
      !( Maybe
           Text
       ),
    _cpdnsnrrsResponseStatus ::
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

-- | Creates a value of 'CreatePrivateDNSNamespaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdnsnrrsOperationId' - A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html GetOperation> .
--
-- * 'cpdnsnrrsResponseStatus' - -- | The response status code.
createPrivateDNSNamespaceResponse ::
  -- | 'cpdnsnrrsResponseStatus'
  Int ->
  CreatePrivateDNSNamespaceResponse
createPrivateDNSNamespaceResponse pResponseStatus_ =
  CreatePrivateDNSNamespaceResponse'
    { _cpdnsnrrsOperationId =
        Nothing,
      _cpdnsnrrsResponseStatus =
        pResponseStatus_
    }

-- | A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html GetOperation> .
cpdnsnrrsOperationId :: Lens' CreatePrivateDNSNamespaceResponse (Maybe Text)
cpdnsnrrsOperationId = lens _cpdnsnrrsOperationId (\s a -> s {_cpdnsnrrsOperationId = a})

-- | -- | The response status code.
cpdnsnrrsResponseStatus :: Lens' CreatePrivateDNSNamespaceResponse Int
cpdnsnrrsResponseStatus = lens _cpdnsnrrsResponseStatus (\s a -> s {_cpdnsnrrsResponseStatus = a})

instance NFData CreatePrivateDNSNamespaceResponse
