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
-- Module      : Network.AWS.Greengrass.GetGroupCertificateAuthority
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retreives the CA associated with a group. Returns the public key of the CA.
module Network.AWS.Greengrass.GetGroupCertificateAuthority
  ( -- * Creating a Request
    getGroupCertificateAuthority,
    GetGroupCertificateAuthority,

    -- * Request Lenses
    ggcaCertificateAuthorityId,
    ggcaGroupId,

    -- * Destructuring the Response
    getGroupCertificateAuthorityResponse,
    GetGroupCertificateAuthorityResponse,

    -- * Response Lenses
    ggcarrsGroupCertificateAuthorityARN,
    ggcarrsPemEncodedCertificate,
    ggcarrsGroupCertificateAuthorityId,
    ggcarrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGroupCertificateAuthority' smart constructor.
data GetGroupCertificateAuthority = GetGroupCertificateAuthority'
  { _ggcaCertificateAuthorityId ::
      !Text,
    _ggcaGroupId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetGroupCertificateAuthority' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggcaCertificateAuthorityId' - The ID of the certificate authority.
--
-- * 'ggcaGroupId' - The ID of the Greengrass group.
getGroupCertificateAuthority ::
  -- | 'ggcaCertificateAuthorityId'
  Text ->
  -- | 'ggcaGroupId'
  Text ->
  GetGroupCertificateAuthority
getGroupCertificateAuthority
  pCertificateAuthorityId_
  pGroupId_ =
    GetGroupCertificateAuthority'
      { _ggcaCertificateAuthorityId =
          pCertificateAuthorityId_,
        _ggcaGroupId = pGroupId_
      }

-- | The ID of the certificate authority.
ggcaCertificateAuthorityId :: Lens' GetGroupCertificateAuthority Text
ggcaCertificateAuthorityId = lens _ggcaCertificateAuthorityId (\s a -> s {_ggcaCertificateAuthorityId = a})

-- | The ID of the Greengrass group.
ggcaGroupId :: Lens' GetGroupCertificateAuthority Text
ggcaGroupId = lens _ggcaGroupId (\s a -> s {_ggcaGroupId = a})

instance AWSRequest GetGroupCertificateAuthority where
  type
    Rs GetGroupCertificateAuthority =
      GetGroupCertificateAuthorityResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetGroupCertificateAuthorityResponse'
            <$> (x .?> "GroupCertificateAuthorityArn")
            <*> (x .?> "PemEncodedCertificate")
            <*> (x .?> "GroupCertificateAuthorityId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetGroupCertificateAuthority

instance NFData GetGroupCertificateAuthority

instance ToHeaders GetGroupCertificateAuthority where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetGroupCertificateAuthority where
  toPath GetGroupCertificateAuthority' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _ggcaGroupId,
        "/certificateauthorities/",
        toBS _ggcaCertificateAuthorityId
      ]

instance ToQuery GetGroupCertificateAuthority where
  toQuery = const mempty

-- | /See:/ 'getGroupCertificateAuthorityResponse' smart constructor.
data GetGroupCertificateAuthorityResponse = GetGroupCertificateAuthorityResponse'
  { _ggcarrsGroupCertificateAuthorityARN ::
      !( Maybe
           Text
       ),
    _ggcarrsPemEncodedCertificate ::
      !( Maybe
           Text
       ),
    _ggcarrsGroupCertificateAuthorityId ::
      !( Maybe
           Text
       ),
    _ggcarrsResponseStatus ::
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

-- | Creates a value of 'GetGroupCertificateAuthorityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggcarrsGroupCertificateAuthorityARN' - The ARN of the certificate authority for the group.
--
-- * 'ggcarrsPemEncodedCertificate' - The PEM encoded certificate for the group.
--
-- * 'ggcarrsGroupCertificateAuthorityId' - The ID of the certificate authority for the group.
--
-- * 'ggcarrsResponseStatus' - -- | The response status code.
getGroupCertificateAuthorityResponse ::
  -- | 'ggcarrsResponseStatus'
  Int ->
  GetGroupCertificateAuthorityResponse
getGroupCertificateAuthorityResponse pResponseStatus_ =
  GetGroupCertificateAuthorityResponse'
    { _ggcarrsGroupCertificateAuthorityARN =
        Nothing,
      _ggcarrsPemEncodedCertificate =
        Nothing,
      _ggcarrsGroupCertificateAuthorityId =
        Nothing,
      _ggcarrsResponseStatus =
        pResponseStatus_
    }

-- | The ARN of the certificate authority for the group.
ggcarrsGroupCertificateAuthorityARN :: Lens' GetGroupCertificateAuthorityResponse (Maybe Text)
ggcarrsGroupCertificateAuthorityARN = lens _ggcarrsGroupCertificateAuthorityARN (\s a -> s {_ggcarrsGroupCertificateAuthorityARN = a})

-- | The PEM encoded certificate for the group.
ggcarrsPemEncodedCertificate :: Lens' GetGroupCertificateAuthorityResponse (Maybe Text)
ggcarrsPemEncodedCertificate = lens _ggcarrsPemEncodedCertificate (\s a -> s {_ggcarrsPemEncodedCertificate = a})

-- | The ID of the certificate authority for the group.
ggcarrsGroupCertificateAuthorityId :: Lens' GetGroupCertificateAuthorityResponse (Maybe Text)
ggcarrsGroupCertificateAuthorityId = lens _ggcarrsGroupCertificateAuthorityId (\s a -> s {_ggcarrsGroupCertificateAuthorityId = a})

-- | -- | The response status code.
ggcarrsResponseStatus :: Lens' GetGroupCertificateAuthorityResponse Int
ggcarrsResponseStatus = lens _ggcarrsResponseStatus (\s a -> s {_ggcarrsResponseStatus = a})

instance NFData GetGroupCertificateAuthorityResponse
