{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ExportJobResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ExportJobResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ExportJobResource
import Network.AWS.Pinpoint.Types.JobStatus
import Network.AWS.Prelude

-- | Provides information about the status and settings of a job that exports endpoint definitions to a file. The file can be added directly to an Amazon Simple Storage Service (Amazon S3) bucket by using the Amazon Pinpoint API or downloaded directly to a computer by using the Amazon Pinpoint console.
--
--
--
-- /See:/ 'exportJobResponse' smart constructor.
data ExportJobResponse = ExportJobResponse'
  { _ejrTotalFailures ::
      !(Maybe Int),
    _ejrFailures :: !(Maybe [Text]),
    _ejrTotalProcessed :: !(Maybe Int),
    _ejrFailedPieces :: !(Maybe Int),
    _ejrCompletedPieces :: !(Maybe Int),
    _ejrTotalPieces :: !(Maybe Int),
    _ejrCompletionDate :: !(Maybe Text),
    _ejrJobStatus :: !JobStatus,
    _ejrCreationDate :: !Text,
    _ejrType :: !Text,
    _ejrDefinition ::
      !ExportJobResource,
    _ejrId :: !Text,
    _ejrApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ejrTotalFailures' - The total number of endpoint definitions that weren't processed successfully (failed) by the export job, typically because an error, such as a syntax error, occurred.
--
-- * 'ejrFailures' - An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the export job, if any.
--
-- * 'ejrTotalProcessed' - The total number of endpoint definitions that were processed by the export job.
--
-- * 'ejrFailedPieces' - The number of pieces that weren't processed successfully (failed) by the export job, as of the time of the request.
--
-- * 'ejrCompletedPieces' - The number of pieces that were processed successfully (completed) by the export job, as of the time of the request.
--
-- * 'ejrTotalPieces' - The total number of pieces that must be processed to complete the export job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the export job.
--
-- * 'ejrCompletionDate' - The date, in ISO 8601 format, when the export job was completed.
--
-- * 'ejrJobStatus' - The status of the export job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.
--
-- * 'ejrCreationDate' - The date, in ISO 8601 format, when the export job was created.
--
-- * 'ejrType' - The job type. This value is EXPORT for export jobs.
--
-- * 'ejrDefinition' - The resource settings that apply to the export job.
--
-- * 'ejrId' - The unique identifier for the export job.
--
-- * 'ejrApplicationId' - The unique identifier for the application that's associated with the export job.
exportJobResponse ::
  -- | 'ejrJobStatus'
  JobStatus ->
  -- | 'ejrCreationDate'
  Text ->
  -- | 'ejrType'
  Text ->
  -- | 'ejrDefinition'
  ExportJobResource ->
  -- | 'ejrId'
  Text ->
  -- | 'ejrApplicationId'
  Text ->
  ExportJobResponse
exportJobResponse
  pJobStatus_
  pCreationDate_
  pType_
  pDefinition_
  pId_
  pApplicationId_ =
    ExportJobResponse'
      { _ejrTotalFailures = Nothing,
        _ejrFailures = Nothing,
        _ejrTotalProcessed = Nothing,
        _ejrFailedPieces = Nothing,
        _ejrCompletedPieces = Nothing,
        _ejrTotalPieces = Nothing,
        _ejrCompletionDate = Nothing,
        _ejrJobStatus = pJobStatus_,
        _ejrCreationDate = pCreationDate_,
        _ejrType = pType_,
        _ejrDefinition = pDefinition_,
        _ejrId = pId_,
        _ejrApplicationId = pApplicationId_
      }

-- | The total number of endpoint definitions that weren't processed successfully (failed) by the export job, typically because an error, such as a syntax error, occurred.
ejrTotalFailures :: Lens' ExportJobResponse (Maybe Int)
ejrTotalFailures = lens _ejrTotalFailures (\s a -> s {_ejrTotalFailures = a})

-- | An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the export job, if any.
ejrFailures :: Lens' ExportJobResponse [Text]
ejrFailures = lens _ejrFailures (\s a -> s {_ejrFailures = a}) . _Default . _Coerce

-- | The total number of endpoint definitions that were processed by the export job.
ejrTotalProcessed :: Lens' ExportJobResponse (Maybe Int)
ejrTotalProcessed = lens _ejrTotalProcessed (\s a -> s {_ejrTotalProcessed = a})

-- | The number of pieces that weren't processed successfully (failed) by the export job, as of the time of the request.
ejrFailedPieces :: Lens' ExportJobResponse (Maybe Int)
ejrFailedPieces = lens _ejrFailedPieces (\s a -> s {_ejrFailedPieces = a})

-- | The number of pieces that were processed successfully (completed) by the export job, as of the time of the request.
ejrCompletedPieces :: Lens' ExportJobResponse (Maybe Int)
ejrCompletedPieces = lens _ejrCompletedPieces (\s a -> s {_ejrCompletedPieces = a})

-- | The total number of pieces that must be processed to complete the export job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the export job.
ejrTotalPieces :: Lens' ExportJobResponse (Maybe Int)
ejrTotalPieces = lens _ejrTotalPieces (\s a -> s {_ejrTotalPieces = a})

-- | The date, in ISO 8601 format, when the export job was completed.
ejrCompletionDate :: Lens' ExportJobResponse (Maybe Text)
ejrCompletionDate = lens _ejrCompletionDate (\s a -> s {_ejrCompletionDate = a})

-- | The status of the export job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.
ejrJobStatus :: Lens' ExportJobResponse JobStatus
ejrJobStatus = lens _ejrJobStatus (\s a -> s {_ejrJobStatus = a})

-- | The date, in ISO 8601 format, when the export job was created.
ejrCreationDate :: Lens' ExportJobResponse Text
ejrCreationDate = lens _ejrCreationDate (\s a -> s {_ejrCreationDate = a})

-- | The job type. This value is EXPORT for export jobs.
ejrType :: Lens' ExportJobResponse Text
ejrType = lens _ejrType (\s a -> s {_ejrType = a})

-- | The resource settings that apply to the export job.
ejrDefinition :: Lens' ExportJobResponse ExportJobResource
ejrDefinition = lens _ejrDefinition (\s a -> s {_ejrDefinition = a})

-- | The unique identifier for the export job.
ejrId :: Lens' ExportJobResponse Text
ejrId = lens _ejrId (\s a -> s {_ejrId = a})

-- | The unique identifier for the application that's associated with the export job.
ejrApplicationId :: Lens' ExportJobResponse Text
ejrApplicationId = lens _ejrApplicationId (\s a -> s {_ejrApplicationId = a})

instance FromJSON ExportJobResponse where
  parseJSON =
    withObject
      "ExportJobResponse"
      ( \x ->
          ExportJobResponse'
            <$> (x .:? "TotalFailures")
            <*> (x .:? "Failures" .!= mempty)
            <*> (x .:? "TotalProcessed")
            <*> (x .:? "FailedPieces")
            <*> (x .:? "CompletedPieces")
            <*> (x .:? "TotalPieces")
            <*> (x .:? "CompletionDate")
            <*> (x .: "JobStatus")
            <*> (x .: "CreationDate")
            <*> (x .: "Type")
            <*> (x .: "Definition")
            <*> (x .: "Id")
            <*> (x .: "ApplicationId")
      )

instance Hashable ExportJobResponse

instance NFData ExportJobResponse
