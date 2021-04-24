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
-- Module      : Network.AWS.IAM.GetOpenIdConnectProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM.
module Network.AWS.IAM.GetOpenIdConnectProvider
  ( -- * Creating a Request
    getOpenIdConnectProvider,
    GetOpenIdConnectProvider,

    -- * Request Lenses
    goicpOpenIdConnectProviderARN,

    -- * Destructuring the Response
    getOpenIdConnectProviderResponse,
    GetOpenIdConnectProviderResponse,

    -- * Response Lenses
    goicprrsClientIdList,
    goicprrsCreateDate,
    goicprrsThumbprintList,
    goicprrsTags,
    goicprrsURL,
    goicprrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getOpenIdConnectProvider' smart constructor.
newtype GetOpenIdConnectProvider = GetOpenIdConnectProvider'
  { _goicpOpenIdConnectProviderARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetOpenIdConnectProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goicpOpenIdConnectProviderARN' - The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get information for. You can get a list of OIDC provider resource ARNs by using the 'ListOpenIDConnectProviders' operation. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
getOpenIdConnectProvider ::
  -- | 'goicpOpenIdConnectProviderARN'
  Text ->
  GetOpenIdConnectProvider
getOpenIdConnectProvider pOpenIdConnectProviderARN_ =
  GetOpenIdConnectProvider'
    { _goicpOpenIdConnectProviderARN =
        pOpenIdConnectProviderARN_
    }

-- | The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get information for. You can get a list of OIDC provider resource ARNs by using the 'ListOpenIDConnectProviders' operation. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
goicpOpenIdConnectProviderARN :: Lens' GetOpenIdConnectProvider Text
goicpOpenIdConnectProviderARN = lens _goicpOpenIdConnectProviderARN (\s a -> s {_goicpOpenIdConnectProviderARN = a})

instance AWSRequest GetOpenIdConnectProvider where
  type
    Rs GetOpenIdConnectProvider =
      GetOpenIdConnectProviderResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetOpenIDConnectProviderResult"
      ( \s h x ->
          GetOpenIdConnectProviderResponse'
            <$> ( x .@? "ClientIDList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "CreateDate")
            <*> ( x .@? "ThumbprintList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "Tags" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Url")
            <*> (pure (fromEnum s))
      )

instance Hashable GetOpenIdConnectProvider

instance NFData GetOpenIdConnectProvider

instance ToHeaders GetOpenIdConnectProvider where
  toHeaders = const mempty

instance ToPath GetOpenIdConnectProvider where
  toPath = const "/"

instance ToQuery GetOpenIdConnectProvider where
  toQuery GetOpenIdConnectProvider' {..} =
    mconcat
      [ "Action"
          =: ("GetOpenIDConnectProvider" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "OpenIDConnectProviderArn"
          =: _goicpOpenIdConnectProviderARN
      ]

-- | Contains the response to a successful 'GetOpenIDConnectProvider' request.
--
--
--
-- /See:/ 'getOpenIdConnectProviderResponse' smart constructor.
data GetOpenIdConnectProviderResponse = GetOpenIdConnectProviderResponse'
  { _goicprrsClientIdList ::
      !( Maybe
           [Text]
       ),
    _goicprrsCreateDate ::
      !( Maybe
           ISO8601
       ),
    _goicprrsThumbprintList ::
      !( Maybe
           [Text]
       ),
    _goicprrsTags ::
      !( Maybe
           [Tag]
       ),
    _goicprrsURL ::
      !( Maybe
           Text
       ),
    _goicprrsResponseStatus ::
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

-- | Creates a value of 'GetOpenIdConnectProviderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goicprrsClientIdList' - A list of client IDs (also known as audiences) that are associated with the specified IAM OIDC provider resource object. For more information, see 'CreateOpenIDConnectProvider' .
--
-- * 'goicprrsCreateDate' - The date and time when the IAM OIDC provider resource object was created in the AWS account.
--
-- * 'goicprrsThumbprintList' - A list of certificate thumbprints that are associated with the specified IAM OIDC provider resource object. For more information, see 'CreateOpenIDConnectProvider' .
--
-- * 'goicprrsTags' - A list of tags that are attached to the specified IAM OIDC provider. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'goicprrsURL' - The URL that the IAM OIDC provider resource object is associated with. For more information, see 'CreateOpenIDConnectProvider' .
--
-- * 'goicprrsResponseStatus' - -- | The response status code.
getOpenIdConnectProviderResponse ::
  -- | 'goicprrsResponseStatus'
  Int ->
  GetOpenIdConnectProviderResponse
getOpenIdConnectProviderResponse pResponseStatus_ =
  GetOpenIdConnectProviderResponse'
    { _goicprrsClientIdList =
        Nothing,
      _goicprrsCreateDate = Nothing,
      _goicprrsThumbprintList = Nothing,
      _goicprrsTags = Nothing,
      _goicprrsURL = Nothing,
      _goicprrsResponseStatus =
        pResponseStatus_
    }

-- | A list of client IDs (also known as audiences) that are associated with the specified IAM OIDC provider resource object. For more information, see 'CreateOpenIDConnectProvider' .
goicprrsClientIdList :: Lens' GetOpenIdConnectProviderResponse [Text]
goicprrsClientIdList = lens _goicprrsClientIdList (\s a -> s {_goicprrsClientIdList = a}) . _Default . _Coerce

-- | The date and time when the IAM OIDC provider resource object was created in the AWS account.
goicprrsCreateDate :: Lens' GetOpenIdConnectProviderResponse (Maybe UTCTime)
goicprrsCreateDate = lens _goicprrsCreateDate (\s a -> s {_goicprrsCreateDate = a}) . mapping _Time

-- | A list of certificate thumbprints that are associated with the specified IAM OIDC provider resource object. For more information, see 'CreateOpenIDConnectProvider' .
goicprrsThumbprintList :: Lens' GetOpenIdConnectProviderResponse [Text]
goicprrsThumbprintList = lens _goicprrsThumbprintList (\s a -> s {_goicprrsThumbprintList = a}) . _Default . _Coerce

-- | A list of tags that are attached to the specified IAM OIDC provider. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
goicprrsTags :: Lens' GetOpenIdConnectProviderResponse [Tag]
goicprrsTags = lens _goicprrsTags (\s a -> s {_goicprrsTags = a}) . _Default . _Coerce

-- | The URL that the IAM OIDC provider resource object is associated with. For more information, see 'CreateOpenIDConnectProvider' .
goicprrsURL :: Lens' GetOpenIdConnectProviderResponse (Maybe Text)
goicprrsURL = lens _goicprrsURL (\s a -> s {_goicprrsURL = a})

-- | -- | The response status code.
goicprrsResponseStatus :: Lens' GetOpenIdConnectProviderResponse Int
goicprrsResponseStatus = lens _goicprrsResponseStatus (\s a -> s {_goicprrsResponseStatus = a})

instance NFData GetOpenIdConnectProviderResponse
