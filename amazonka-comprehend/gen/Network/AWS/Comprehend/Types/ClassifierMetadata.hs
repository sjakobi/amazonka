{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.ClassifierMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.ClassifierMetadata where

import Network.AWS.Comprehend.Types.ClassifierEvaluationMetrics
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a document classifier.
--
--
--
-- /See:/ 'classifierMetadata' smart constructor.
data ClassifierMetadata = ClassifierMetadata'
  { _cmNumberOfLabels ::
      !(Maybe Int),
    _cmNumberOfTestDocuments ::
      !(Maybe Int),
    _cmNumberOfTrainedDocuments ::
      !(Maybe Int),
    _cmEvaluationMetrics ::
      !( Maybe
           ClassifierEvaluationMetrics
       )
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClassifierMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmNumberOfLabels' - The number of labels in the input data.
--
-- * 'cmNumberOfTestDocuments' - The number of documents in the input data that were used to test the classifier. Typically this is 10 to 20 percent of the input documents, up to 10,000 documents.
--
-- * 'cmNumberOfTrainedDocuments' - The number of documents in the input data that were used to train the classifier. Typically this is 80 to 90 percent of the input documents.
--
-- * 'cmEvaluationMetrics' - Describes the result metrics for the test data associated with an documentation classifier.
classifierMetadata ::
  ClassifierMetadata
classifierMetadata =
  ClassifierMetadata'
    { _cmNumberOfLabels = Nothing,
      _cmNumberOfTestDocuments = Nothing,
      _cmNumberOfTrainedDocuments = Nothing,
      _cmEvaluationMetrics = Nothing
    }

-- | The number of labels in the input data.
cmNumberOfLabels :: Lens' ClassifierMetadata (Maybe Int)
cmNumberOfLabels = lens _cmNumberOfLabels (\s a -> s {_cmNumberOfLabels = a})

-- | The number of documents in the input data that were used to test the classifier. Typically this is 10 to 20 percent of the input documents, up to 10,000 documents.
cmNumberOfTestDocuments :: Lens' ClassifierMetadata (Maybe Int)
cmNumberOfTestDocuments = lens _cmNumberOfTestDocuments (\s a -> s {_cmNumberOfTestDocuments = a})

-- | The number of documents in the input data that were used to train the classifier. Typically this is 80 to 90 percent of the input documents.
cmNumberOfTrainedDocuments :: Lens' ClassifierMetadata (Maybe Int)
cmNumberOfTrainedDocuments = lens _cmNumberOfTrainedDocuments (\s a -> s {_cmNumberOfTrainedDocuments = a})

-- | Describes the result metrics for the test data associated with an documentation classifier.
cmEvaluationMetrics :: Lens' ClassifierMetadata (Maybe ClassifierEvaluationMetrics)
cmEvaluationMetrics = lens _cmEvaluationMetrics (\s a -> s {_cmEvaluationMetrics = a})

instance FromJSON ClassifierMetadata where
  parseJSON =
    withObject
      "ClassifierMetadata"
      ( \x ->
          ClassifierMetadata'
            <$> (x .:? "NumberOfLabels")
            <*> (x .:? "NumberOfTestDocuments")
            <*> (x .:? "NumberOfTrainedDocuments")
            <*> (x .:? "EvaluationMetrics")
      )

instance Hashable ClassifierMetadata

instance NFData ClassifierMetadata
