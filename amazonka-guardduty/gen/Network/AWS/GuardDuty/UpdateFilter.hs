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
-- Module      : Network.AWS.GuardDuty.UpdateFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the filter specified by the filter name.
module Network.AWS.GuardDuty.UpdateFilter
  ( -- * Creating a Request
    updateFilter,
    UpdateFilter,

    -- * Request Lenses
    uRank,
    uFindingCriteria,
    uAction,
    uDescription,
    uDetectorId,
    uFilterName,

    -- * Destructuring the Response
    updateFilterResponse,
    UpdateFilterResponse,

    -- * Response Lenses
    ursResponseStatus,
    ursName,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateFilter' smart constructor.
data UpdateFilter = UpdateFilter'
  { _uRank ::
      !(Maybe Nat),
    _uFindingCriteria :: !(Maybe FindingCriteria),
    _uAction :: !(Maybe FilterAction),
    _uDescription :: !(Maybe Text),
    _uDetectorId :: !Text,
    _uFilterName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uRank' - Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
--
-- * 'uFindingCriteria' - Represents the criteria to be used in the filter for querying findings.
--
-- * 'uAction' - Specifies the action that is to be applied to the findings that match the filter.
--
-- * 'uDescription' - The description of the filter.
--
-- * 'uDetectorId' - The unique ID of the detector that specifies the GuardDuty service where you want to update a filter.
--
-- * 'uFilterName' - The name of the filter.
updateFilter ::
  -- | 'uDetectorId'
  Text ->
  -- | 'uFilterName'
  Text ->
  UpdateFilter
updateFilter pDetectorId_ pFilterName_ =
  UpdateFilter'
    { _uRank = Nothing,
      _uFindingCriteria = Nothing,
      _uAction = Nothing,
      _uDescription = Nothing,
      _uDetectorId = pDetectorId_,
      _uFilterName = pFilterName_
    }

-- | Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
uRank :: Lens' UpdateFilter (Maybe Natural)
uRank = lens _uRank (\s a -> s {_uRank = a}) . mapping _Nat

-- | Represents the criteria to be used in the filter for querying findings.
uFindingCriteria :: Lens' UpdateFilter (Maybe FindingCriteria)
uFindingCriteria = lens _uFindingCriteria (\s a -> s {_uFindingCriteria = a})

-- | Specifies the action that is to be applied to the findings that match the filter.
uAction :: Lens' UpdateFilter (Maybe FilterAction)
uAction = lens _uAction (\s a -> s {_uAction = a})

-- | The description of the filter.
uDescription :: Lens' UpdateFilter (Maybe Text)
uDescription = lens _uDescription (\s a -> s {_uDescription = a})

-- | The unique ID of the detector that specifies the GuardDuty service where you want to update a filter.
uDetectorId :: Lens' UpdateFilter Text
uDetectorId = lens _uDetectorId (\s a -> s {_uDetectorId = a})

-- | The name of the filter.
uFilterName :: Lens' UpdateFilter Text
uFilterName = lens _uFilterName (\s a -> s {_uFilterName = a})

instance AWSRequest UpdateFilter where
  type Rs UpdateFilter = UpdateFilterResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          UpdateFilterResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "name")
      )

instance Hashable UpdateFilter

instance NFData UpdateFilter

instance ToHeaders UpdateFilter where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateFilter where
  toJSON UpdateFilter' {..} =
    object
      ( catMaybes
          [ ("rank" .=) <$> _uRank,
            ("findingCriteria" .=) <$> _uFindingCriteria,
            ("action" .=) <$> _uAction,
            ("description" .=) <$> _uDescription
          ]
      )

instance ToPath UpdateFilter where
  toPath UpdateFilter' {..} =
    mconcat
      [ "/detector/",
        toBS _uDetectorId,
        "/filter/",
        toBS _uFilterName
      ]

instance ToQuery UpdateFilter where
  toQuery = const mempty

-- | /See:/ 'updateFilterResponse' smart constructor.
data UpdateFilterResponse = UpdateFilterResponse'
  { _ursResponseStatus ::
      !Int,
    _ursName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursResponseStatus' - -- | The response status code.
--
-- * 'ursName' - The name of the filter.
updateFilterResponse ::
  -- | 'ursResponseStatus'
  Int ->
  -- | 'ursName'
  Text ->
  UpdateFilterResponse
updateFilterResponse pResponseStatus_ pName_ =
  UpdateFilterResponse'
    { _ursResponseStatus =
        pResponseStatus_,
      _ursName = pName_
    }

-- | -- | The response status code.
ursResponseStatus :: Lens' UpdateFilterResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

-- | The name of the filter.
ursName :: Lens' UpdateFilterResponse Text
ursName = lens _ursName (\s a -> s {_ursName = a})

instance NFData UpdateFilterResponse
