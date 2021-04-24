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
-- Module      : Network.AWS.MechanicalTurk.ListHITsForQualificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListHITsForQualificationType@ operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the @DeleteHIT@ operation or that have been auto-deleted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListHITsForQualificationType
  ( -- * Creating a Request
    listHITsForQualificationType,
    ListHITsForQualificationType,

    -- * Request Lenses
    lhitfqtNextToken,
    lhitfqtMaxResults,
    lhitfqtQualificationTypeId,

    -- * Destructuring the Response
    listHITsForQualificationTypeResponse,
    ListHITsForQualificationTypeResponse,

    -- * Response Lenses
    lhitfqtrrsNextToken,
    lhitfqtrrsHITs,
    lhitfqtrrsNumResults,
    lhitfqtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listHITsForQualificationType' smart constructor.
data ListHITsForQualificationType = ListHITsForQualificationType'
  { _lhitfqtNextToken ::
      !(Maybe Text),
    _lhitfqtMaxResults ::
      !(Maybe Nat),
    _lhitfqtQualificationTypeId ::
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

-- | Creates a value of 'ListHITsForQualificationType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhitfqtNextToken' - Pagination Token
--
-- * 'lhitfqtMaxResults' - Limit the number of results returned.
--
-- * 'lhitfqtQualificationTypeId' - The ID of the Qualification type to use when querying HITs.
listHITsForQualificationType ::
  -- | 'lhitfqtQualificationTypeId'
  Text ->
  ListHITsForQualificationType
listHITsForQualificationType pQualificationTypeId_ =
  ListHITsForQualificationType'
    { _lhitfqtNextToken =
        Nothing,
      _lhitfqtMaxResults = Nothing,
      _lhitfqtQualificationTypeId =
        pQualificationTypeId_
    }

-- | Pagination Token
lhitfqtNextToken :: Lens' ListHITsForQualificationType (Maybe Text)
lhitfqtNextToken = lens _lhitfqtNextToken (\s a -> s {_lhitfqtNextToken = a})

-- | Limit the number of results returned.
lhitfqtMaxResults :: Lens' ListHITsForQualificationType (Maybe Natural)
lhitfqtMaxResults = lens _lhitfqtMaxResults (\s a -> s {_lhitfqtMaxResults = a}) . mapping _Nat

-- | The ID of the Qualification type to use when querying HITs.
lhitfqtQualificationTypeId :: Lens' ListHITsForQualificationType Text
lhitfqtQualificationTypeId = lens _lhitfqtQualificationTypeId (\s a -> s {_lhitfqtQualificationTypeId = a})

instance AWSPager ListHITsForQualificationType where
  page rq rs
    | stop (rs ^. lhitfqtrrsNextToken) = Nothing
    | stop (rs ^. lhitfqtrrsHITs) = Nothing
    | otherwise =
      Just $
        rq
          & lhitfqtNextToken .~ rs ^. lhitfqtrrsNextToken

instance AWSRequest ListHITsForQualificationType where
  type
    Rs ListHITsForQualificationType =
      ListHITsForQualificationTypeResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListHITsForQualificationTypeResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "HITs" .!@ mempty)
            <*> (x .?> "NumResults")
            <*> (pure (fromEnum s))
      )

instance Hashable ListHITsForQualificationType

instance NFData ListHITsForQualificationType

instance ToHeaders ListHITsForQualificationType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListHITsForQualificationType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListHITsForQualificationType where
  toJSON ListHITsForQualificationType' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lhitfqtNextToken,
            ("MaxResults" .=) <$> _lhitfqtMaxResults,
            Just
              ( "QualificationTypeId"
                  .= _lhitfqtQualificationTypeId
              )
          ]
      )

instance ToPath ListHITsForQualificationType where
  toPath = const "/"

instance ToQuery ListHITsForQualificationType where
  toQuery = const mempty

-- | /See:/ 'listHITsForQualificationTypeResponse' smart constructor.
data ListHITsForQualificationTypeResponse = ListHITsForQualificationTypeResponse'
  { _lhitfqtrrsNextToken ::
      !( Maybe
           Text
       ),
    _lhitfqtrrsHITs ::
      !( Maybe
           [HIT]
       ),
    _lhitfqtrrsNumResults ::
      !( Maybe
           Int
       ),
    _lhitfqtrrsResponseStatus ::
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

-- | Creates a value of 'ListHITsForQualificationTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhitfqtrrsNextToken' - Undocumented member.
--
-- * 'lhitfqtrrsHITs' - The list of HIT elements returned by the query.
--
-- * 'lhitfqtrrsNumResults' - The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.
--
-- * 'lhitfqtrrsResponseStatus' - -- | The response status code.
listHITsForQualificationTypeResponse ::
  -- | 'lhitfqtrrsResponseStatus'
  Int ->
  ListHITsForQualificationTypeResponse
listHITsForQualificationTypeResponse pResponseStatus_ =
  ListHITsForQualificationTypeResponse'
    { _lhitfqtrrsNextToken =
        Nothing,
      _lhitfqtrrsHITs = Nothing,
      _lhitfqtrrsNumResults = Nothing,
      _lhitfqtrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
lhitfqtrrsNextToken :: Lens' ListHITsForQualificationTypeResponse (Maybe Text)
lhitfqtrrsNextToken = lens _lhitfqtrrsNextToken (\s a -> s {_lhitfqtrrsNextToken = a})

-- | The list of HIT elements returned by the query.
lhitfqtrrsHITs :: Lens' ListHITsForQualificationTypeResponse [HIT]
lhitfqtrrsHITs = lens _lhitfqtrrsHITs (\s a -> s {_lhitfqtrrsHITs = a}) . _Default . _Coerce

-- | The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.
lhitfqtrrsNumResults :: Lens' ListHITsForQualificationTypeResponse (Maybe Int)
lhitfqtrrsNumResults = lens _lhitfqtrrsNumResults (\s a -> s {_lhitfqtrrsNumResults = a})

-- | -- | The response status code.
lhitfqtrrsResponseStatus :: Lens' ListHITsForQualificationTypeResponse Int
lhitfqtrrsResponseStatus = lens _lhitfqtrrsResponseStatus (\s a -> s {_lhitfqtrrsResponseStatus = a})

instance NFData ListHITsForQualificationTypeResponse
