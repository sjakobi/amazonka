{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.ClassifierEvaluationMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.ClassifierEvaluationMetrics where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the result metrics for the test data associated with an documentation classifier.
--
--
--
-- /See:/ 'classifierEvaluationMetrics' smart constructor.
data ClassifierEvaluationMetrics = ClassifierEvaluationMetrics'
  { _cemMicroRecall ::
      !(Maybe Double),
    _cemF1Score ::
      !(Maybe Double),
    _cemMicroPrecision ::
      !(Maybe Double),
    _cemPrecision ::
      !(Maybe Double),
    _cemAccuracy ::
      !(Maybe Double),
    _cemHammingLoss ::
      !(Maybe Double),
    _cemRecall ::
      !(Maybe Double),
    _cemMicroF1Score ::
      !(Maybe Double)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ClassifierEvaluationMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cemMicroRecall' - A measure of how complete the classifier results are for the test data. High recall means that the classifier returned most of the relevant results. Specifically, this indicates how many of the correct categories in the text that the model can predict. It is a percentage of correct categories in the text that can found. Instead of averaging the recall scores of all labels (as with Recall), micro Recall is based on the overall score of all recall scores added together.
--
-- * 'cemF1Score' - A measure of how accurate the classifier results are for the test data. It is derived from the @Precision@ and @Recall@ values. The @F1Score@ is the harmonic average of the two scores. The highest score is 1, and the worst score is 0.
--
-- * 'cemMicroPrecision' - A measure of the usefulness of the recognizer results in the test data. High precision means that the recognizer returned substantially more relevant results than irrelevant ones. Unlike the Precision metric which comes from averaging the precision of all available labels, this is based on the overall score of all precision scores added together.
--
-- * 'cemPrecision' - A measure of the usefulness of the classifier results in the test data. High precision means that the classifier returned substantially more relevant results than irrelevant ones.
--
-- * 'cemAccuracy' - The fraction of the labels that were correct recognized. It is computed by dividing the number of labels in the test documents that were correctly recognized by the total number of labels in the test documents.
--
-- * 'cemHammingLoss' - Indicates the fraction of labels that are incorrectly predicted. Also seen as the fraction of wrong labels compared to the total number of labels. Scores closer to zero are better.
--
-- * 'cemRecall' - A measure of how complete the classifier results are for the test data. High recall means that the classifier returned most of the relevant results.
--
-- * 'cemMicroF1Score' - A measure of how accurate the classifier results are for the test data. It is a combination of the @Micro Precision@ and @Micro Recall@ values. The @Micro F1Score@ is the harmonic mean of the two scores. The highest score is 1, and the worst score is 0.
classifierEvaluationMetrics ::
  ClassifierEvaluationMetrics
classifierEvaluationMetrics =
  ClassifierEvaluationMetrics'
    { _cemMicroRecall =
        Nothing,
      _cemF1Score = Nothing,
      _cemMicroPrecision = Nothing,
      _cemPrecision = Nothing,
      _cemAccuracy = Nothing,
      _cemHammingLoss = Nothing,
      _cemRecall = Nothing,
      _cemMicroF1Score = Nothing
    }

-- | A measure of how complete the classifier results are for the test data. High recall means that the classifier returned most of the relevant results. Specifically, this indicates how many of the correct categories in the text that the model can predict. It is a percentage of correct categories in the text that can found. Instead of averaging the recall scores of all labels (as with Recall), micro Recall is based on the overall score of all recall scores added together.
cemMicroRecall :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemMicroRecall = lens _cemMicroRecall (\s a -> s {_cemMicroRecall = a})

-- | A measure of how accurate the classifier results are for the test data. It is derived from the @Precision@ and @Recall@ values. The @F1Score@ is the harmonic average of the two scores. The highest score is 1, and the worst score is 0.
cemF1Score :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemF1Score = lens _cemF1Score (\s a -> s {_cemF1Score = a})

-- | A measure of the usefulness of the recognizer results in the test data. High precision means that the recognizer returned substantially more relevant results than irrelevant ones. Unlike the Precision metric which comes from averaging the precision of all available labels, this is based on the overall score of all precision scores added together.
cemMicroPrecision :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemMicroPrecision = lens _cemMicroPrecision (\s a -> s {_cemMicroPrecision = a})

-- | A measure of the usefulness of the classifier results in the test data. High precision means that the classifier returned substantially more relevant results than irrelevant ones.
cemPrecision :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemPrecision = lens _cemPrecision (\s a -> s {_cemPrecision = a})

-- | The fraction of the labels that were correct recognized. It is computed by dividing the number of labels in the test documents that were correctly recognized by the total number of labels in the test documents.
cemAccuracy :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemAccuracy = lens _cemAccuracy (\s a -> s {_cemAccuracy = a})

-- | Indicates the fraction of labels that are incorrectly predicted. Also seen as the fraction of wrong labels compared to the total number of labels. Scores closer to zero are better.
cemHammingLoss :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemHammingLoss = lens _cemHammingLoss (\s a -> s {_cemHammingLoss = a})

-- | A measure of how complete the classifier results are for the test data. High recall means that the classifier returned most of the relevant results.
cemRecall :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemRecall = lens _cemRecall (\s a -> s {_cemRecall = a})

-- | A measure of how accurate the classifier results are for the test data. It is a combination of the @Micro Precision@ and @Micro Recall@ values. The @Micro F1Score@ is the harmonic mean of the two scores. The highest score is 1, and the worst score is 0.
cemMicroF1Score :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemMicroF1Score = lens _cemMicroF1Score (\s a -> s {_cemMicroF1Score = a})

instance FromJSON ClassifierEvaluationMetrics where
  parseJSON =
    withObject
      "ClassifierEvaluationMetrics"
      ( \x ->
          ClassifierEvaluationMetrics'
            <$> (x .:? "MicroRecall")
            <*> (x .:? "F1Score")
            <*> (x .:? "MicroPrecision")
            <*> (x .:? "Precision")
            <*> (x .:? "Accuracy")
            <*> (x .:? "HammingLoss")
            <*> (x .:? "Recall")
            <*> (x .:? "MicroF1Score")
      )

instance Hashable ClassifierEvaluationMetrics

instance NFData ClassifierEvaluationMetrics
