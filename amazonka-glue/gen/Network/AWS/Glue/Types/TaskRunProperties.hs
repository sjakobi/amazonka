{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TaskRunProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TaskRunProperties where

import Network.AWS.Glue.Types.ExportLabelsTaskRunProperties
import Network.AWS.Glue.Types.FindMatchesTaskRunProperties
import Network.AWS.Glue.Types.ImportLabelsTaskRunProperties
import Network.AWS.Glue.Types.LabelingSetGenerationTaskRunProperties
import Network.AWS.Glue.Types.TaskType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The configuration properties for the task run.
--
--
--
-- /See:/ 'taskRunProperties' smart constructor.
data TaskRunProperties = TaskRunProperties'
  { _trpExportLabelsTaskRunProperties ::
      !( Maybe
           ExportLabelsTaskRunProperties
       ),
    _trpFindMatchesTaskRunProperties ::
      !( Maybe
           FindMatchesTaskRunProperties
       ),
    _trpLabelingSetGenerationTaskRunProperties ::
      !( Maybe
           LabelingSetGenerationTaskRunProperties
       ),
    _trpTaskType :: !(Maybe TaskType),
    _trpImportLabelsTaskRunProperties ::
      !( Maybe
           ImportLabelsTaskRunProperties
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TaskRunProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trpExportLabelsTaskRunProperties' - The configuration properties for an exporting labels task run.
--
-- * 'trpFindMatchesTaskRunProperties' - The configuration properties for a find matches task run.
--
-- * 'trpLabelingSetGenerationTaskRunProperties' - The configuration properties for a labeling set generation task run.
--
-- * 'trpTaskType' - The type of task run.
--
-- * 'trpImportLabelsTaskRunProperties' - The configuration properties for an importing labels task run.
taskRunProperties ::
  TaskRunProperties
taskRunProperties =
  TaskRunProperties'
    { _trpExportLabelsTaskRunProperties =
        Nothing,
      _trpFindMatchesTaskRunProperties = Nothing,
      _trpLabelingSetGenerationTaskRunProperties = Nothing,
      _trpTaskType = Nothing,
      _trpImportLabelsTaskRunProperties = Nothing
    }

-- | The configuration properties for an exporting labels task run.
trpExportLabelsTaskRunProperties :: Lens' TaskRunProperties (Maybe ExportLabelsTaskRunProperties)
trpExportLabelsTaskRunProperties = lens _trpExportLabelsTaskRunProperties (\s a -> s {_trpExportLabelsTaskRunProperties = a})

-- | The configuration properties for a find matches task run.
trpFindMatchesTaskRunProperties :: Lens' TaskRunProperties (Maybe FindMatchesTaskRunProperties)
trpFindMatchesTaskRunProperties = lens _trpFindMatchesTaskRunProperties (\s a -> s {_trpFindMatchesTaskRunProperties = a})

-- | The configuration properties for a labeling set generation task run.
trpLabelingSetGenerationTaskRunProperties :: Lens' TaskRunProperties (Maybe LabelingSetGenerationTaskRunProperties)
trpLabelingSetGenerationTaskRunProperties = lens _trpLabelingSetGenerationTaskRunProperties (\s a -> s {_trpLabelingSetGenerationTaskRunProperties = a})

-- | The type of task run.
trpTaskType :: Lens' TaskRunProperties (Maybe TaskType)
trpTaskType = lens _trpTaskType (\s a -> s {_trpTaskType = a})

-- | The configuration properties for an importing labels task run.
trpImportLabelsTaskRunProperties :: Lens' TaskRunProperties (Maybe ImportLabelsTaskRunProperties)
trpImportLabelsTaskRunProperties = lens _trpImportLabelsTaskRunProperties (\s a -> s {_trpImportLabelsTaskRunProperties = a})

instance FromJSON TaskRunProperties where
  parseJSON =
    withObject
      "TaskRunProperties"
      ( \x ->
          TaskRunProperties'
            <$> (x .:? "ExportLabelsTaskRunProperties")
            <*> (x .:? "FindMatchesTaskRunProperties")
            <*> (x .:? "LabelingSetGenerationTaskRunProperties")
            <*> (x .:? "TaskType")
            <*> (x .:? "ImportLabelsTaskRunProperties")
      )

instance Hashable TaskRunProperties

instance NFData TaskRunProperties
