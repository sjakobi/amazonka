{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ImportJobResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ImportJobResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ImportJobResource
import Network.AWS.Pinpoint.Types.JobStatus
import Network.AWS.Prelude

-- | Provides information about the status and settings of a job that imports endpoint definitions from one or more files. The files can be stored in an Amazon Simple Storage Service (Amazon S3) bucket or uploaded directly from a computer by using the Amazon Pinpoint console.
--
--
--
-- /See:/ 'importJobResponse' smart constructor.
data ImportJobResponse = ImportJobResponse'
  { _ijrTotalFailures ::
      !(Maybe Int),
    _ijrFailures :: !(Maybe [Text]),
    _ijrTotalProcessed :: !(Maybe Int),
    _ijrFailedPieces :: !(Maybe Int),
    _ijrCompletedPieces :: !(Maybe Int),
    _ijrTotalPieces :: !(Maybe Int),
    _ijrCompletionDate :: !(Maybe Text),
    _ijrJobStatus :: !JobStatus,
    _ijrCreationDate :: !Text,
    _ijrType :: !Text,
    _ijrDefinition ::
      !ImportJobResource,
    _ijrId :: !Text,
    _ijrApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ijrTotalFailures' - The total number of endpoint definitions that weren't processed successfully (failed) by the import job, typically because an error, such as a syntax error, occurred.
--
-- * 'ijrFailures' - An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the import job, if any.
--
-- * 'ijrTotalProcessed' - The total number of endpoint definitions that were processed by the import job.
--
-- * 'ijrFailedPieces' - The number of pieces that weren't processed successfully (failed) by the import job, as of the time of the request.
--
-- * 'ijrCompletedPieces' - The number of pieces that were processed successfully (completed) by the import job, as of the time of the request.
--
-- * 'ijrTotalPieces' - The total number of pieces that must be processed to complete the import job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the import job.
--
-- * 'ijrCompletionDate' - The date, in ISO 8601 format, when the import job was completed.
--
-- * 'ijrJobStatus' - The status of the import job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.
--
-- * 'ijrCreationDate' - The date, in ISO 8601 format, when the import job was created.
--
-- * 'ijrType' - The job type. This value is IMPORT for import jobs.
--
-- * 'ijrDefinition' - The resource settings that apply to the import job.
--
-- * 'ijrId' - The unique identifier for the import job.
--
-- * 'ijrApplicationId' - The unique identifier for the application that's associated with the import job.
importJobResponse ::
  -- | 'ijrJobStatus'
  JobStatus ->
  -- | 'ijrCreationDate'
  Text ->
  -- | 'ijrType'
  Text ->
  -- | 'ijrDefinition'
  ImportJobResource ->
  -- | 'ijrId'
  Text ->
  -- | 'ijrApplicationId'
  Text ->
  ImportJobResponse
importJobResponse
  pJobStatus_
  pCreationDate_
  pType_
  pDefinition_
  pId_
  pApplicationId_ =
    ImportJobResponse'
      { _ijrTotalFailures = Nothing,
        _ijrFailures = Nothing,
        _ijrTotalProcessed = Nothing,
        _ijrFailedPieces = Nothing,
        _ijrCompletedPieces = Nothing,
        _ijrTotalPieces = Nothing,
        _ijrCompletionDate = Nothing,
        _ijrJobStatus = pJobStatus_,
        _ijrCreationDate = pCreationDate_,
        _ijrType = pType_,
        _ijrDefinition = pDefinition_,
        _ijrId = pId_,
        _ijrApplicationId = pApplicationId_
      }

-- | The total number of endpoint definitions that weren't processed successfully (failed) by the import job, typically because an error, such as a syntax error, occurred.
ijrTotalFailures :: Lens' ImportJobResponse (Maybe Int)
ijrTotalFailures = lens _ijrTotalFailures (\s a -> s {_ijrTotalFailures = a})

-- | An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the import job, if any.
ijrFailures :: Lens' ImportJobResponse [Text]
ijrFailures = lens _ijrFailures (\s a -> s {_ijrFailures = a}) . _Default . _Coerce

-- | The total number of endpoint definitions that were processed by the import job.
ijrTotalProcessed :: Lens' ImportJobResponse (Maybe Int)
ijrTotalProcessed = lens _ijrTotalProcessed (\s a -> s {_ijrTotalProcessed = a})

-- | The number of pieces that weren't processed successfully (failed) by the import job, as of the time of the request.
ijrFailedPieces :: Lens' ImportJobResponse (Maybe Int)
ijrFailedPieces = lens _ijrFailedPieces (\s a -> s {_ijrFailedPieces = a})

-- | The number of pieces that were processed successfully (completed) by the import job, as of the time of the request.
ijrCompletedPieces :: Lens' ImportJobResponse (Maybe Int)
ijrCompletedPieces = lens _ijrCompletedPieces (\s a -> s {_ijrCompletedPieces = a})

-- | The total number of pieces that must be processed to complete the import job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the import job.
ijrTotalPieces :: Lens' ImportJobResponse (Maybe Int)
ijrTotalPieces = lens _ijrTotalPieces (\s a -> s {_ijrTotalPieces = a})

-- | The date, in ISO 8601 format, when the import job was completed.
ijrCompletionDate :: Lens' ImportJobResponse (Maybe Text)
ijrCompletionDate = lens _ijrCompletionDate (\s a -> s {_ijrCompletionDate = a})

-- | The status of the import job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.
ijrJobStatus :: Lens' ImportJobResponse JobStatus
ijrJobStatus = lens _ijrJobStatus (\s a -> s {_ijrJobStatus = a})

-- | The date, in ISO 8601 format, when the import job was created.
ijrCreationDate :: Lens' ImportJobResponse Text
ijrCreationDate = lens _ijrCreationDate (\s a -> s {_ijrCreationDate = a})

-- | The job type. This value is IMPORT for import jobs.
ijrType :: Lens' ImportJobResponse Text
ijrType = lens _ijrType (\s a -> s {_ijrType = a})

-- | The resource settings that apply to the import job.
ijrDefinition :: Lens' ImportJobResponse ImportJobResource
ijrDefinition = lens _ijrDefinition (\s a -> s {_ijrDefinition = a})

-- | The unique identifier for the import job.
ijrId :: Lens' ImportJobResponse Text
ijrId = lens _ijrId (\s a -> s {_ijrId = a})

-- | The unique identifier for the application that's associated with the import job.
ijrApplicationId :: Lens' ImportJobResponse Text
ijrApplicationId = lens _ijrApplicationId (\s a -> s {_ijrApplicationId = a})

instance FromJSON ImportJobResponse where
  parseJSON =
    withObject
      "ImportJobResponse"
      ( \x ->
          ImportJobResponse'
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

instance Hashable ImportJobResponse

instance NFData ImportJobResponse
