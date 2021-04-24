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
-- Module      : Network.AWS.AlexaBusiness.ListSkills
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all enabled skills in a specific skill group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.ListSkills
  ( -- * Creating a Request
    listSkills,
    ListSkills,

    -- * Request Lenses
    lsNextToken,
    lsMaxResults,
    lsSkillType,
    lsSkillGroupARN,
    lsEnablementType,

    -- * Destructuring the Response
    listSkillsResponse,
    ListSkillsResponse,

    -- * Response Lenses
    lsrrsNextToken,
    lsrrsSkillSummaries,
    lsrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSkills' smart constructor.
data ListSkills = ListSkills'
  { _lsNextToken ::
      !(Maybe Text),
    _lsMaxResults :: !(Maybe Nat),
    _lsSkillType :: !(Maybe SkillTypeFilter),
    _lsSkillGroupARN :: !(Maybe Text),
    _lsEnablementType ::
      !(Maybe EnablementTypeFilter)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSkills' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'lsMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'lsSkillType' - Whether the skill is publicly available or is a private skill.
--
-- * 'lsSkillGroupARN' - The ARN of the skill group for which to list enabled skills.
--
-- * 'lsEnablementType' - Whether the skill is enabled under the user's account.
listSkills ::
  ListSkills
listSkills =
  ListSkills'
    { _lsNextToken = Nothing,
      _lsMaxResults = Nothing,
      _lsSkillType = Nothing,
      _lsSkillGroupARN = Nothing,
      _lsEnablementType = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
lsNextToken :: Lens' ListSkills (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
lsMaxResults :: Lens' ListSkills (Maybe Natural)
lsMaxResults = lens _lsMaxResults (\s a -> s {_lsMaxResults = a}) . mapping _Nat

-- | Whether the skill is publicly available or is a private skill.
lsSkillType :: Lens' ListSkills (Maybe SkillTypeFilter)
lsSkillType = lens _lsSkillType (\s a -> s {_lsSkillType = a})

-- | The ARN of the skill group for which to list enabled skills.
lsSkillGroupARN :: Lens' ListSkills (Maybe Text)
lsSkillGroupARN = lens _lsSkillGroupARN (\s a -> s {_lsSkillGroupARN = a})

-- | Whether the skill is enabled under the user's account.
lsEnablementType :: Lens' ListSkills (Maybe EnablementTypeFilter)
lsEnablementType = lens _lsEnablementType (\s a -> s {_lsEnablementType = a})

instance AWSPager ListSkills where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsSkillSummaries) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListSkills where
  type Rs ListSkills = ListSkillsResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          ListSkillsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "SkillSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSkills

instance NFData ListSkills

instance ToHeaders ListSkills where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.ListSkills" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSkills where
  toJSON ListSkills' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsNextToken,
            ("MaxResults" .=) <$> _lsMaxResults,
            ("SkillType" .=) <$> _lsSkillType,
            ("SkillGroupArn" .=) <$> _lsSkillGroupARN,
            ("EnablementType" .=) <$> _lsEnablementType
          ]
      )

instance ToPath ListSkills where
  toPath = const "/"

instance ToQuery ListSkills where
  toQuery = const mempty

-- | /See:/ 'listSkillsResponse' smart constructor.
data ListSkillsResponse = ListSkillsResponse'
  { _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsSkillSummaries ::
      !(Maybe [SkillSummary]),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSkillsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'lsrrsSkillSummaries' - The list of enabled skills requested. Required.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listSkillsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListSkillsResponse
listSkillsResponse pResponseStatus_ =
  ListSkillsResponse'
    { _lsrrsNextToken = Nothing,
      _lsrrsSkillSummaries = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
lsrrsNextToken :: Lens' ListSkillsResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | The list of enabled skills requested. Required.
lsrrsSkillSummaries :: Lens' ListSkillsResponse [SkillSummary]
lsrrsSkillSummaries = lens _lsrrsSkillSummaries (\s a -> s {_lsrrsSkillSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListSkillsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListSkillsResponse
