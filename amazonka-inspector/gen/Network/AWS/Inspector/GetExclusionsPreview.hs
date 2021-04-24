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
-- Module      : Network.AWS.Inspector.GetExclusionsPreview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
module Network.AWS.Inspector.GetExclusionsPreview
  ( -- * Creating a Request
    getExclusionsPreview,
    GetExclusionsPreview,

    -- * Request Lenses
    gepNextToken,
    gepMaxResults,
    gepLocale,
    gepAssessmentTemplateARN,
    gepPreviewToken,

    -- * Destructuring the Response
    getExclusionsPreviewResponse,
    GetExclusionsPreviewResponse,

    -- * Response Lenses
    geprrsNextToken,
    geprrsExclusionPreviews,
    geprrsResponseStatus,
    geprrsPreviewStatus,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getExclusionsPreview' smart constructor.
data GetExclusionsPreview = GetExclusionsPreview'
  { _gepNextToken ::
      !(Maybe Text),
    _gepMaxResults ::
      !(Maybe Int),
    _gepLocale :: !(Maybe Locale),
    _gepAssessmentTemplateARN ::
      !Text,
    _gepPreviewToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExclusionsPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gepNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
--
-- * 'gepMaxResults' - You can use this parameter to indicate the maximum number of items you want in the response. The default value is 100. The maximum value is 500.
--
-- * 'gepLocale' - The locale into which you want to translate the exclusion's title, description, and recommendation.
--
-- * 'gepAssessmentTemplateARN' - The ARN that specifies the assessment template for which the exclusions preview was requested.
--
-- * 'gepPreviewToken' - The unique identifier associated of the exclusions preview.
getExclusionsPreview ::
  -- | 'gepAssessmentTemplateARN'
  Text ->
  -- | 'gepPreviewToken'
  Text ->
  GetExclusionsPreview
getExclusionsPreview
  pAssessmentTemplateARN_
  pPreviewToken_ =
    GetExclusionsPreview'
      { _gepNextToken = Nothing,
        _gepMaxResults = Nothing,
        _gepLocale = Nothing,
        _gepAssessmentTemplateARN = pAssessmentTemplateARN_,
        _gepPreviewToken = pPreviewToken_
      }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
gepNextToken :: Lens' GetExclusionsPreview (Maybe Text)
gepNextToken = lens _gepNextToken (\s a -> s {_gepNextToken = a})

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 100. The maximum value is 500.
gepMaxResults :: Lens' GetExclusionsPreview (Maybe Int)
gepMaxResults = lens _gepMaxResults (\s a -> s {_gepMaxResults = a})

-- | The locale into which you want to translate the exclusion's title, description, and recommendation.
gepLocale :: Lens' GetExclusionsPreview (Maybe Locale)
gepLocale = lens _gepLocale (\s a -> s {_gepLocale = a})

-- | The ARN that specifies the assessment template for which the exclusions preview was requested.
gepAssessmentTemplateARN :: Lens' GetExclusionsPreview Text
gepAssessmentTemplateARN = lens _gepAssessmentTemplateARN (\s a -> s {_gepAssessmentTemplateARN = a})

-- | The unique identifier associated of the exclusions preview.
gepPreviewToken :: Lens' GetExclusionsPreview Text
gepPreviewToken = lens _gepPreviewToken (\s a -> s {_gepPreviewToken = a})

instance AWSRequest GetExclusionsPreview where
  type
    Rs GetExclusionsPreview =
      GetExclusionsPreviewResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          GetExclusionsPreviewResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "exclusionPreviews" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "previewStatus")
      )

instance Hashable GetExclusionsPreview

instance NFData GetExclusionsPreview

instance ToHeaders GetExclusionsPreview where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.GetExclusionsPreview" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetExclusionsPreview where
  toJSON GetExclusionsPreview' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gepNextToken,
            ("maxResults" .=) <$> _gepMaxResults,
            ("locale" .=) <$> _gepLocale,
            Just
              ( "assessmentTemplateArn"
                  .= _gepAssessmentTemplateARN
              ),
            Just ("previewToken" .= _gepPreviewToken)
          ]
      )

instance ToPath GetExclusionsPreview where
  toPath = const "/"

instance ToQuery GetExclusionsPreview where
  toQuery = const mempty

-- | /See:/ 'getExclusionsPreviewResponse' smart constructor.
data GetExclusionsPreviewResponse = GetExclusionsPreviewResponse'
  { _geprrsNextToken ::
      !(Maybe Text),
    _geprrsExclusionPreviews ::
      !( Maybe
           [ExclusionPreview]
       ),
    _geprrsResponseStatus ::
      !Int,
    _geprrsPreviewStatus ::
      !PreviewStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetExclusionsPreviewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geprrsNextToken' - When a response is generated, if there is more data to be listed, this parameters is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- * 'geprrsExclusionPreviews' - Information about the exclusions included in the preview.
--
-- * 'geprrsResponseStatus' - -- | The response status code.
--
-- * 'geprrsPreviewStatus' - Specifies the status of the request to generate an exclusions preview.
getExclusionsPreviewResponse ::
  -- | 'geprrsResponseStatus'
  Int ->
  -- | 'geprrsPreviewStatus'
  PreviewStatus ->
  GetExclusionsPreviewResponse
getExclusionsPreviewResponse
  pResponseStatus_
  pPreviewStatus_ =
    GetExclusionsPreviewResponse'
      { _geprrsNextToken =
          Nothing,
        _geprrsExclusionPreviews = Nothing,
        _geprrsResponseStatus = pResponseStatus_,
        _geprrsPreviewStatus = pPreviewStatus_
      }

-- | When a response is generated, if there is more data to be listed, this parameters is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
geprrsNextToken :: Lens' GetExclusionsPreviewResponse (Maybe Text)
geprrsNextToken = lens _geprrsNextToken (\s a -> s {_geprrsNextToken = a})

-- | Information about the exclusions included in the preview.
geprrsExclusionPreviews :: Lens' GetExclusionsPreviewResponse [ExclusionPreview]
geprrsExclusionPreviews = lens _geprrsExclusionPreviews (\s a -> s {_geprrsExclusionPreviews = a}) . _Default . _Coerce

-- | -- | The response status code.
geprrsResponseStatus :: Lens' GetExclusionsPreviewResponse Int
geprrsResponseStatus = lens _geprrsResponseStatus (\s a -> s {_geprrsResponseStatus = a})

-- | Specifies the status of the request to generate an exclusions preview.
geprrsPreviewStatus :: Lens' GetExclusionsPreviewResponse PreviewStatus
geprrsPreviewStatus = lens _geprrsPreviewStatus (\s a -> s {_geprrsPreviewStatus = a})

instance NFData GetExclusionsPreviewResponse
