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
-- Module      : Network.AWS.Pinpoint.ListTemplateVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about all the versions of a specific message template.
module Network.AWS.Pinpoint.ListTemplateVersions
  ( -- * Creating a Request
    listTemplateVersions,
    ListTemplateVersions,

    -- * Request Lenses
    ltvNextToken,
    ltvPageSize,
    ltvTemplateName,
    ltvTemplateType,

    -- * Destructuring the Response
    listTemplateVersionsResponse,
    ListTemplateVersionsResponse,

    -- * Response Lenses
    ltvrrsResponseStatus,
    ltvrrsTemplateVersionsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTemplateVersions' smart constructor.
data ListTemplateVersions = ListTemplateVersions'
  { _ltvNextToken ::
      !(Maybe Text),
    _ltvPageSize :: !(Maybe Text),
    _ltvTemplateName :: !Text,
    _ltvTemplateType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTemplateVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltvNextToken' - The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'ltvPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'ltvTemplateName' - The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
--
-- * 'ltvTemplateType' - The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.
listTemplateVersions ::
  -- | 'ltvTemplateName'
  Text ->
  -- | 'ltvTemplateType'
  Text ->
  ListTemplateVersions
listTemplateVersions pTemplateName_ pTemplateType_ =
  ListTemplateVersions'
    { _ltvNextToken = Nothing,
      _ltvPageSize = Nothing,
      _ltvTemplateName = pTemplateName_,
      _ltvTemplateType = pTemplateType_
    }

-- | The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.
ltvNextToken :: Lens' ListTemplateVersions (Maybe Text)
ltvNextToken = lens _ltvNextToken (\s a -> s {_ltvNextToken = a})

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
ltvPageSize :: Lens' ListTemplateVersions (Maybe Text)
ltvPageSize = lens _ltvPageSize (\s a -> s {_ltvPageSize = a})

-- | The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
ltvTemplateName :: Lens' ListTemplateVersions Text
ltvTemplateName = lens _ltvTemplateName (\s a -> s {_ltvTemplateName = a})

-- | The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.
ltvTemplateType :: Lens' ListTemplateVersions Text
ltvTemplateType = lens _ltvTemplateType (\s a -> s {_ltvTemplateType = a})

instance AWSRequest ListTemplateVersions where
  type
    Rs ListTemplateVersions =
      ListTemplateVersionsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          ListTemplateVersionsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable ListTemplateVersions

instance NFData ListTemplateVersions

instance ToHeaders ListTemplateVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListTemplateVersions where
  toPath ListTemplateVersions' {..} =
    mconcat
      [ "/v1/templates/",
        toBS _ltvTemplateName,
        "/",
        toBS _ltvTemplateType,
        "/versions"
      ]

instance ToQuery ListTemplateVersions where
  toQuery ListTemplateVersions' {..} =
    mconcat
      [ "next-token" =: _ltvNextToken,
        "page-size" =: _ltvPageSize
      ]

-- | /See:/ 'listTemplateVersionsResponse' smart constructor.
data ListTemplateVersionsResponse = ListTemplateVersionsResponse'
  { _ltvrrsResponseStatus ::
      !Int,
    _ltvrrsTemplateVersionsResponse ::
      !TemplateVersionsResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTemplateVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltvrrsResponseStatus' - -- | The response status code.
--
-- * 'ltvrrsTemplateVersionsResponse' - Undocumented member.
listTemplateVersionsResponse ::
  -- | 'ltvrrsResponseStatus'
  Int ->
  -- | 'ltvrrsTemplateVersionsResponse'
  TemplateVersionsResponse ->
  ListTemplateVersionsResponse
listTemplateVersionsResponse
  pResponseStatus_
  pTemplateVersionsResponse_ =
    ListTemplateVersionsResponse'
      { _ltvrrsResponseStatus =
          pResponseStatus_,
        _ltvrrsTemplateVersionsResponse =
          pTemplateVersionsResponse_
      }

-- | -- | The response status code.
ltvrrsResponseStatus :: Lens' ListTemplateVersionsResponse Int
ltvrrsResponseStatus = lens _ltvrrsResponseStatus (\s a -> s {_ltvrrsResponseStatus = a})

-- | Undocumented member.
ltvrrsTemplateVersionsResponse :: Lens' ListTemplateVersionsResponse TemplateVersionsResponse
ltvrrsTemplateVersionsResponse = lens _ltvrrsTemplateVersionsResponse (\s a -> s {_ltvrrsTemplateVersionsResponse = a})

instance NFData ListTemplateVersionsResponse
