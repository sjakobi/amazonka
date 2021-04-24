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
-- Module      : Network.AWS.AlexaBusiness.ListSkillsStoreSkillsByCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all skills in the Alexa skill store by category.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.ListSkillsStoreSkillsByCategory
  ( -- * Creating a Request
    listSkillsStoreSkillsByCategory,
    ListSkillsStoreSkillsByCategory,

    -- * Request Lenses
    lsssbcNextToken,
    lsssbcMaxResults,
    lsssbcCategoryId,

    -- * Destructuring the Response
    listSkillsStoreSkillsByCategoryResponse,
    ListSkillsStoreSkillsByCategoryResponse,

    -- * Response Lenses
    lsssbcrrsSkillsStoreSkills,
    lsssbcrrsNextToken,
    lsssbcrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSkillsStoreSkillsByCategory' smart constructor.
data ListSkillsStoreSkillsByCategory = ListSkillsStoreSkillsByCategory'
  { _lsssbcNextToken ::
      !( Maybe
           Text
       ),
    _lsssbcMaxResults ::
      !( Maybe
           Nat
       ),
    _lsssbcCategoryId ::
      !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListSkillsStoreSkillsByCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsssbcNextToken' - The tokens used for pagination.
--
-- * 'lsssbcMaxResults' - The maximum number of skills returned per paginated calls.
--
-- * 'lsssbcCategoryId' - The category ID for which the skills are being retrieved from the skill store.
listSkillsStoreSkillsByCategory ::
  -- | 'lsssbcCategoryId'
  Natural ->
  ListSkillsStoreSkillsByCategory
listSkillsStoreSkillsByCategory pCategoryId_ =
  ListSkillsStoreSkillsByCategory'
    { _lsssbcNextToken =
        Nothing,
      _lsssbcMaxResults = Nothing,
      _lsssbcCategoryId = _Nat # pCategoryId_
    }

-- | The tokens used for pagination.
lsssbcNextToken :: Lens' ListSkillsStoreSkillsByCategory (Maybe Text)
lsssbcNextToken = lens _lsssbcNextToken (\s a -> s {_lsssbcNextToken = a})

-- | The maximum number of skills returned per paginated calls.
lsssbcMaxResults :: Lens' ListSkillsStoreSkillsByCategory (Maybe Natural)
lsssbcMaxResults = lens _lsssbcMaxResults (\s a -> s {_lsssbcMaxResults = a}) . mapping _Nat

-- | The category ID for which the skills are being retrieved from the skill store.
lsssbcCategoryId :: Lens' ListSkillsStoreSkillsByCategory Natural
lsssbcCategoryId = lens _lsssbcCategoryId (\s a -> s {_lsssbcCategoryId = a}) . _Nat

instance AWSPager ListSkillsStoreSkillsByCategory where
  page rq rs
    | stop (rs ^. lsssbcrrsNextToken) = Nothing
    | stop (rs ^. lsssbcrrsSkillsStoreSkills) = Nothing
    | otherwise =
      Just $
        rq
          & lsssbcNextToken .~ rs ^. lsssbcrrsNextToken

instance AWSRequest ListSkillsStoreSkillsByCategory where
  type
    Rs ListSkillsStoreSkillsByCategory =
      ListSkillsStoreSkillsByCategoryResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          ListSkillsStoreSkillsByCategoryResponse'
            <$> (x .?> "SkillsStoreSkills" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListSkillsStoreSkillsByCategory

instance NFData ListSkillsStoreSkillsByCategory

instance ToHeaders ListSkillsStoreSkillsByCategory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.ListSkillsStoreSkillsByCategory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSkillsStoreSkillsByCategory where
  toJSON ListSkillsStoreSkillsByCategory' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsssbcNextToken,
            ("MaxResults" .=) <$> _lsssbcMaxResults,
            Just ("CategoryId" .= _lsssbcCategoryId)
          ]
      )

instance ToPath ListSkillsStoreSkillsByCategory where
  toPath = const "/"

instance ToQuery ListSkillsStoreSkillsByCategory where
  toQuery = const mempty

-- | /See:/ 'listSkillsStoreSkillsByCategoryResponse' smart constructor.
data ListSkillsStoreSkillsByCategoryResponse = ListSkillsStoreSkillsByCategoryResponse'
  { _lsssbcrrsSkillsStoreSkills ::
      !( Maybe
           [SkillsStoreSkill]
       ),
    _lsssbcrrsNextToken ::
      !( Maybe
           Text
       ),
    _lsssbcrrsResponseStatus ::
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

-- | Creates a value of 'ListSkillsStoreSkillsByCategoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsssbcrrsSkillsStoreSkills' - The skill store skills.
--
-- * 'lsssbcrrsNextToken' - The tokens used for pagination.
--
-- * 'lsssbcrrsResponseStatus' - -- | The response status code.
listSkillsStoreSkillsByCategoryResponse ::
  -- | 'lsssbcrrsResponseStatus'
  Int ->
  ListSkillsStoreSkillsByCategoryResponse
listSkillsStoreSkillsByCategoryResponse
  pResponseStatus_ =
    ListSkillsStoreSkillsByCategoryResponse'
      { _lsssbcrrsSkillsStoreSkills =
          Nothing,
        _lsssbcrrsNextToken = Nothing,
        _lsssbcrrsResponseStatus =
          pResponseStatus_
      }

-- | The skill store skills.
lsssbcrrsSkillsStoreSkills :: Lens' ListSkillsStoreSkillsByCategoryResponse [SkillsStoreSkill]
lsssbcrrsSkillsStoreSkills = lens _lsssbcrrsSkillsStoreSkills (\s a -> s {_lsssbcrrsSkillsStoreSkills = a}) . _Default . _Coerce

-- | The tokens used for pagination.
lsssbcrrsNextToken :: Lens' ListSkillsStoreSkillsByCategoryResponse (Maybe Text)
lsssbcrrsNextToken = lens _lsssbcrrsNextToken (\s a -> s {_lsssbcrrsNextToken = a})

-- | -- | The response status code.
lsssbcrrsResponseStatus :: Lens' ListSkillsStoreSkillsByCategoryResponse Int
lsssbcrrsResponseStatus = lens _lsssbcrrsResponseStatus (\s a -> s {_lsssbcrrsResponseStatus = a})

instance
  NFData
    ListSkillsStoreSkillsByCategoryResponse
