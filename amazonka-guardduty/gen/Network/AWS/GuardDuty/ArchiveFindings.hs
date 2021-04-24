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
-- Module      : Network.AWS.GuardDuty.ArchiveFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Archives GuardDuty findings that are specified by the list of finding IDs.
module Network.AWS.GuardDuty.ArchiveFindings
  ( -- * Creating a Request
    archiveFindings,
    ArchiveFindings,

    -- * Request Lenses
    afDetectorId,
    afFindingIds,

    -- * Destructuring the Response
    archiveFindingsResponse,
    ArchiveFindingsResponse,

    -- * Response Lenses
    afrrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'archiveFindings' smart constructor.
data ArchiveFindings = ArchiveFindings'
  { _afDetectorId ::
      !Text,
    _afFindingIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ArchiveFindings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afDetectorId' - The ID of the detector that specifies the GuardDuty service whose findings you want to archive.
--
-- * 'afFindingIds' - The IDs of the findings that you want to archive.
archiveFindings ::
  -- | 'afDetectorId'
  Text ->
  ArchiveFindings
archiveFindings pDetectorId_ =
  ArchiveFindings'
    { _afDetectorId = pDetectorId_,
      _afFindingIds = mempty
    }

-- | The ID of the detector that specifies the GuardDuty service whose findings you want to archive.
afDetectorId :: Lens' ArchiveFindings Text
afDetectorId = lens _afDetectorId (\s a -> s {_afDetectorId = a})

-- | The IDs of the findings that you want to archive.
afFindingIds :: Lens' ArchiveFindings [Text]
afFindingIds = lens _afFindingIds (\s a -> s {_afFindingIds = a}) . _Coerce

instance AWSRequest ArchiveFindings where
  type Rs ArchiveFindings = ArchiveFindingsResponse
  request = postJSON guardDuty
  response =
    receiveEmpty
      ( \s h x ->
          ArchiveFindingsResponse' <$> (pure (fromEnum s))
      )

instance Hashable ArchiveFindings

instance NFData ArchiveFindings

instance ToHeaders ArchiveFindings where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ArchiveFindings where
  toJSON ArchiveFindings' {..} =
    object
      (catMaybes [Just ("findingIds" .= _afFindingIds)])

instance ToPath ArchiveFindings where
  toPath ArchiveFindings' {..} =
    mconcat
      [ "/detector/",
        toBS _afDetectorId,
        "/findings/archive"
      ]

instance ToQuery ArchiveFindings where
  toQuery = const mempty

-- | /See:/ 'archiveFindingsResponse' smart constructor.
newtype ArchiveFindingsResponse = ArchiveFindingsResponse'
  { _afrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ArchiveFindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afrrsResponseStatus' - -- | The response status code.
archiveFindingsResponse ::
  -- | 'afrrsResponseStatus'
  Int ->
  ArchiveFindingsResponse
archiveFindingsResponse pResponseStatus_ =
  ArchiveFindingsResponse'
    { _afrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
afrrsResponseStatus :: Lens' ArchiveFindingsResponse Int
afrrsResponseStatus = lens _afrrsResponseStatus (\s a -> s {_afrrsResponseStatus = a})

instance NFData ArchiveFindingsResponse
