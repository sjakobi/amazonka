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
-- Module      : Network.AWS.GuardDuty.GetFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of the filter specified by the filter name.
module Network.AWS.GuardDuty.GetFilter
  ( -- * Creating a Request
    getFilter,
    GetFilter,

    -- * Request Lenses
    gDetectorId,
    gFilterName,

    -- * Destructuring the Response
    getFilterResponse,
    GetFilterResponse,

    -- * Response Lenses
    grsRank,
    grsTags,
    grsDescription,
    grsResponseStatus,
    grsName,
    grsAction,
    grsFindingCriteria,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFilter' smart constructor.
data GetFilter = GetFilter'
  { _gDetectorId :: !Text,
    _gFilterName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gDetectorId' - The unique ID of the detector that the filter is associated with.
--
-- * 'gFilterName' - The name of the filter you want to get.
getFilter ::
  -- | 'gDetectorId'
  Text ->
  -- | 'gFilterName'
  Text ->
  GetFilter
getFilter pDetectorId_ pFilterName_ =
  GetFilter'
    { _gDetectorId = pDetectorId_,
      _gFilterName = pFilterName_
    }

-- | The unique ID of the detector that the filter is associated with.
gDetectorId :: Lens' GetFilter Text
gDetectorId = lens _gDetectorId (\s a -> s {_gDetectorId = a})

-- | The name of the filter you want to get.
gFilterName :: Lens' GetFilter Text
gFilterName = lens _gFilterName (\s a -> s {_gFilterName = a})

instance AWSRequest GetFilter where
  type Rs GetFilter = GetFilterResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          GetFilterResponse'
            <$> (x .?> "rank")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (pure (fromEnum s))
            <*> (x .:> "name")
            <*> (x .:> "action")
            <*> (x .:> "findingCriteria")
      )

instance Hashable GetFilter

instance NFData GetFilter

instance ToHeaders GetFilter where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetFilter where
  toPath GetFilter' {..} =
    mconcat
      [ "/detector/",
        toBS _gDetectorId,
        "/filter/",
        toBS _gFilterName
      ]

instance ToQuery GetFilter where
  toQuery = const mempty

-- | /See:/ 'getFilterResponse' smart constructor.
data GetFilterResponse = GetFilterResponse'
  { _grsRank ::
      !(Maybe Nat),
    _grsTags ::
      !(Maybe (Map Text Text)),
    _grsDescription :: !(Maybe Text),
    _grsResponseStatus :: !Int,
    _grsName :: !Text,
    _grsAction :: !FilterAction,
    _grsFindingCriteria ::
      !FindingCriteria
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsRank' - Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
--
-- * 'grsTags' - The tags of the filter resource.
--
-- * 'grsDescription' - The description of the filter.
--
-- * 'grsResponseStatus' - -- | The response status code.
--
-- * 'grsName' - The name of the filter.
--
-- * 'grsAction' - Specifies the action that is to be applied to the findings that match the filter.
--
-- * 'grsFindingCriteria' - Represents the criteria to be used in the filter for querying findings.
getFilterResponse ::
  -- | 'grsResponseStatus'
  Int ->
  -- | 'grsName'
  Text ->
  -- | 'grsAction'
  FilterAction ->
  -- | 'grsFindingCriteria'
  FindingCriteria ->
  GetFilterResponse
getFilterResponse
  pResponseStatus_
  pName_
  pAction_
  pFindingCriteria_ =
    GetFilterResponse'
      { _grsRank = Nothing,
        _grsTags = Nothing,
        _grsDescription = Nothing,
        _grsResponseStatus = pResponseStatus_,
        _grsName = pName_,
        _grsAction = pAction_,
        _grsFindingCriteria = pFindingCriteria_
      }

-- | Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
grsRank :: Lens' GetFilterResponse (Maybe Natural)
grsRank = lens _grsRank (\s a -> s {_grsRank = a}) . mapping _Nat

-- | The tags of the filter resource.
grsTags :: Lens' GetFilterResponse (HashMap Text Text)
grsTags = lens _grsTags (\s a -> s {_grsTags = a}) . _Default . _Map

-- | The description of the filter.
grsDescription :: Lens' GetFilterResponse (Maybe Text)
grsDescription = lens _grsDescription (\s a -> s {_grsDescription = a})

-- | -- | The response status code.
grsResponseStatus :: Lens' GetFilterResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

-- | The name of the filter.
grsName :: Lens' GetFilterResponse Text
grsName = lens _grsName (\s a -> s {_grsName = a})

-- | Specifies the action that is to be applied to the findings that match the filter.
grsAction :: Lens' GetFilterResponse FilterAction
grsAction = lens _grsAction (\s a -> s {_grsAction = a})

-- | Represents the criteria to be used in the filter for querying findings.
grsFindingCriteria :: Lens' GetFilterResponse FindingCriteria
grsFindingCriteria = lens _grsFindingCriteria (\s a -> s {_grsFindingCriteria = a})

instance NFData GetFilterResponse
