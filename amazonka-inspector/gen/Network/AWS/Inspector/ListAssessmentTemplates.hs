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
-- Module      : Network.AWS.Inspector.ListAssessmentTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Inspector.ListAssessmentTemplates
  ( -- * Creating a Request
    listAssessmentTemplates,
    ListAssessmentTemplates,

    -- * Request Lenses
    lNextToken,
    lMaxResults,
    lAssessmentTargetARNs,
    lFilter,

    -- * Destructuring the Response
    listAssessmentTemplatesResponse,
    ListAssessmentTemplatesResponse,

    -- * Response Lenses
    latrrsNextToken,
    latrrsResponseStatus,
    latrrsAssessmentTemplateARNs,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAssessmentTemplates' smart constructor.
data ListAssessmentTemplates = ListAssessmentTemplates'
  { _lNextToken ::
      !(Maybe Text),
    _lMaxResults ::
      !(Maybe Int),
    _lAssessmentTargetARNs ::
      !(Maybe [Text]),
    _lFilter ::
      !( Maybe
           AssessmentTemplateFilter
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAssessmentTemplates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListAssessmentTemplates__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
--
-- * 'lMaxResults' - You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
--
-- * 'lAssessmentTargetARNs' - A list of ARNs that specifies the assessment targets whose assessment templates you want to list.
--
-- * 'lFilter' - You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
listAssessmentTemplates ::
  ListAssessmentTemplates
listAssessmentTemplates =
  ListAssessmentTemplates'
    { _lNextToken = Nothing,
      _lMaxResults = Nothing,
      _lAssessmentTargetARNs = Nothing,
      _lFilter = Nothing
    }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListAssessmentTemplates__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
lNextToken :: Lens' ListAssessmentTemplates (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
lMaxResults :: Lens' ListAssessmentTemplates (Maybe Int)
lMaxResults = lens _lMaxResults (\s a -> s {_lMaxResults = a})

-- | A list of ARNs that specifies the assessment targets whose assessment templates you want to list.
lAssessmentTargetARNs :: Lens' ListAssessmentTemplates [Text]
lAssessmentTargetARNs = lens _lAssessmentTargetARNs (\s a -> s {_lAssessmentTargetARNs = a}) . _Default . _Coerce

-- | You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
lFilter :: Lens' ListAssessmentTemplates (Maybe AssessmentTemplateFilter)
lFilter = lens _lFilter (\s a -> s {_lFilter = a})

instance AWSPager ListAssessmentTemplates where
  page rq rs
    | stop (rs ^. latrrsNextToken) = Nothing
    | stop (rs ^. latrrsAssessmentTemplateARNs) = Nothing
    | otherwise =
      Just $ rq & lNextToken .~ rs ^. latrrsNextToken

instance AWSRequest ListAssessmentTemplates where
  type
    Rs ListAssessmentTemplates =
      ListAssessmentTemplatesResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          ListAssessmentTemplatesResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "assessmentTemplateArns" .!@ mempty)
      )

instance Hashable ListAssessmentTemplates

instance NFData ListAssessmentTemplates

instance ToHeaders ListAssessmentTemplates where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.ListAssessmentTemplates" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssessmentTemplates where
  toJSON ListAssessmentTemplates' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lNextToken,
            ("maxResults" .=) <$> _lMaxResults,
            ("assessmentTargetArns" .=)
              <$> _lAssessmentTargetARNs,
            ("filter" .=) <$> _lFilter
          ]
      )

instance ToPath ListAssessmentTemplates where
  toPath = const "/"

instance ToQuery ListAssessmentTemplates where
  toQuery = const mempty

-- | /See:/ 'listAssessmentTemplatesResponse' smart constructor.
data ListAssessmentTemplatesResponse = ListAssessmentTemplatesResponse'
  { _latrrsNextToken ::
      !( Maybe
           Text
       ),
    _latrrsResponseStatus ::
      !Int,
    _latrrsAssessmentTemplateARNs ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAssessmentTemplatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'latrrsNextToken' - When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- * 'latrrsResponseStatus' - -- | The response status code.
--
-- * 'latrrsAssessmentTemplateARNs' - A list of ARNs that specifies the assessment templates returned by the action.
listAssessmentTemplatesResponse ::
  -- | 'latrrsResponseStatus'
  Int ->
  ListAssessmentTemplatesResponse
listAssessmentTemplatesResponse pResponseStatus_ =
  ListAssessmentTemplatesResponse'
    { _latrrsNextToken =
        Nothing,
      _latrrsResponseStatus = pResponseStatus_,
      _latrrsAssessmentTemplateARNs = mempty
    }

-- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
latrrsNextToken :: Lens' ListAssessmentTemplatesResponse (Maybe Text)
latrrsNextToken = lens _latrrsNextToken (\s a -> s {_latrrsNextToken = a})

-- | -- | The response status code.
latrrsResponseStatus :: Lens' ListAssessmentTemplatesResponse Int
latrrsResponseStatus = lens _latrrsResponseStatus (\s a -> s {_latrrsResponseStatus = a})

-- | A list of ARNs that specifies the assessment templates returned by the action.
latrrsAssessmentTemplateARNs :: Lens' ListAssessmentTemplatesResponse [Text]
latrrsAssessmentTemplateARNs = lens _latrrsAssessmentTemplateARNs (\s a -> s {_latrrsAssessmentTemplateARNs = a}) . _Coerce

instance NFData ListAssessmentTemplatesResponse
