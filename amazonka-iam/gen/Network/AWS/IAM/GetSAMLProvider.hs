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
-- Module      : Network.AWS.IAM.GetSAMLProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated.
module Network.AWS.IAM.GetSAMLProvider
  ( -- * Creating a Request
    getSAMLProvider,
    GetSAMLProvider,

    -- * Request Lenses
    gsamlpSAMLProviderARN,

    -- * Destructuring the Response
    getSAMLProviderResponse,
    GetSAMLProviderResponse,

    -- * Response Lenses
    gsamlprrsCreateDate,
    gsamlprrsValidUntil,
    gsamlprrsTags,
    gsamlprrsSAMLMetadataDocument,
    gsamlprrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSAMLProvider' smart constructor.
newtype GetSAMLProvider = GetSAMLProvider'
  { _gsamlpSAMLProviderARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSAMLProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsamlpSAMLProviderARN' - The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get information about. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
getSAMLProvider ::
  -- | 'gsamlpSAMLProviderARN'
  Text ->
  GetSAMLProvider
getSAMLProvider pSAMLProviderARN_ =
  GetSAMLProvider'
    { _gsamlpSAMLProviderARN =
        pSAMLProviderARN_
    }

-- | The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get information about. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
gsamlpSAMLProviderARN :: Lens' GetSAMLProvider Text
gsamlpSAMLProviderARN = lens _gsamlpSAMLProviderARN (\s a -> s {_gsamlpSAMLProviderARN = a})

instance AWSRequest GetSAMLProvider where
  type Rs GetSAMLProvider = GetSAMLProviderResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetSAMLProviderResult"
      ( \s h x ->
          GetSAMLProviderResponse'
            <$> (x .@? "CreateDate")
            <*> (x .@? "ValidUntil")
            <*> ( x .@? "Tags" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "SAMLMetadataDocument")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSAMLProvider

instance NFData GetSAMLProvider

instance ToHeaders GetSAMLProvider where
  toHeaders = const mempty

instance ToPath GetSAMLProvider where
  toPath = const "/"

instance ToQuery GetSAMLProvider where
  toQuery GetSAMLProvider' {..} =
    mconcat
      [ "Action" =: ("GetSAMLProvider" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "SAMLProviderArn" =: _gsamlpSAMLProviderARN
      ]

-- | Contains the response to a successful 'GetSAMLProvider' request.
--
--
--
-- /See:/ 'getSAMLProviderResponse' smart constructor.
data GetSAMLProviderResponse = GetSAMLProviderResponse'
  { _gsamlprrsCreateDate ::
      !(Maybe ISO8601),
    _gsamlprrsValidUntil ::
      !(Maybe ISO8601),
    _gsamlprrsTags ::
      !(Maybe [Tag]),
    _gsamlprrsSAMLMetadataDocument ::
      !(Maybe Text),
    _gsamlprrsResponseStatus ::
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

-- | Creates a value of 'GetSAMLProviderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsamlprrsCreateDate' - The date and time when the SAML provider was created.
--
-- * 'gsamlprrsValidUntil' - The expiration date and time for the SAML provider.
--
-- * 'gsamlprrsTags' - A list of tags that are attached to the specified IAM SAML provider. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'gsamlprrsSAMLMetadataDocument' - The XML metadata document that includes information about an identity provider.
--
-- * 'gsamlprrsResponseStatus' - -- | The response status code.
getSAMLProviderResponse ::
  -- | 'gsamlprrsResponseStatus'
  Int ->
  GetSAMLProviderResponse
getSAMLProviderResponse pResponseStatus_ =
  GetSAMLProviderResponse'
    { _gsamlprrsCreateDate =
        Nothing,
      _gsamlprrsValidUntil = Nothing,
      _gsamlprrsTags = Nothing,
      _gsamlprrsSAMLMetadataDocument = Nothing,
      _gsamlprrsResponseStatus = pResponseStatus_
    }

-- | The date and time when the SAML provider was created.
gsamlprrsCreateDate :: Lens' GetSAMLProviderResponse (Maybe UTCTime)
gsamlprrsCreateDate = lens _gsamlprrsCreateDate (\s a -> s {_gsamlprrsCreateDate = a}) . mapping _Time

-- | The expiration date and time for the SAML provider.
gsamlprrsValidUntil :: Lens' GetSAMLProviderResponse (Maybe UTCTime)
gsamlprrsValidUntil = lens _gsamlprrsValidUntil (\s a -> s {_gsamlprrsValidUntil = a}) . mapping _Time

-- | A list of tags that are attached to the specified IAM SAML provider. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
gsamlprrsTags :: Lens' GetSAMLProviderResponse [Tag]
gsamlprrsTags = lens _gsamlprrsTags (\s a -> s {_gsamlprrsTags = a}) . _Default . _Coerce

-- | The XML metadata document that includes information about an identity provider.
gsamlprrsSAMLMetadataDocument :: Lens' GetSAMLProviderResponse (Maybe Text)
gsamlprrsSAMLMetadataDocument = lens _gsamlprrsSAMLMetadataDocument (\s a -> s {_gsamlprrsSAMLMetadataDocument = a})

-- | -- | The response status code.
gsamlprrsResponseStatus :: Lens' GetSAMLProviderResponse Int
gsamlprrsResponseStatus = lens _gsamlprrsResponseStatus (\s a -> s {_gsamlprrsResponseStatus = a})

instance NFData GetSAMLProviderResponse
