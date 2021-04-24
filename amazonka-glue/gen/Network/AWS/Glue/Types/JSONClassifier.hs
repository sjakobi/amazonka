{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JSONClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.JSONClassifier where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A classifier for @JSON@ content.
--
--
--
-- /See:/ 'jsonClassifier' smart constructor.
data JSONClassifier = JSONClassifier'
  { _jsoncCreationTime ::
      !(Maybe POSIX),
    _jsoncVersion :: !(Maybe Integer),
    _jsoncLastUpdated :: !(Maybe POSIX),
    _jsoncName :: !Text,
    _jsoncJSONPath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JSONClassifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsoncCreationTime' - The time that this classifier was registered.
--
-- * 'jsoncVersion' - The version of this classifier.
--
-- * 'jsoncLastUpdated' - The time that this classifier was last updated.
--
-- * 'jsoncName' - The name of the classifier.
--
-- * 'jsoncJSONPath' - A @JsonPath@ string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in <https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json Writing JsonPath Custom Classifiers> .
jsonClassifier ::
  -- | 'jsoncName'
  Text ->
  -- | 'jsoncJSONPath'
  Text ->
  JSONClassifier
jsonClassifier pName_ pJSONPath_ =
  JSONClassifier'
    { _jsoncCreationTime = Nothing,
      _jsoncVersion = Nothing,
      _jsoncLastUpdated = Nothing,
      _jsoncName = pName_,
      _jsoncJSONPath = pJSONPath_
    }

-- | The time that this classifier was registered.
jsoncCreationTime :: Lens' JSONClassifier (Maybe UTCTime)
jsoncCreationTime = lens _jsoncCreationTime (\s a -> s {_jsoncCreationTime = a}) . mapping _Time

-- | The version of this classifier.
jsoncVersion :: Lens' JSONClassifier (Maybe Integer)
jsoncVersion = lens _jsoncVersion (\s a -> s {_jsoncVersion = a})

-- | The time that this classifier was last updated.
jsoncLastUpdated :: Lens' JSONClassifier (Maybe UTCTime)
jsoncLastUpdated = lens _jsoncLastUpdated (\s a -> s {_jsoncLastUpdated = a}) . mapping _Time

-- | The name of the classifier.
jsoncName :: Lens' JSONClassifier Text
jsoncName = lens _jsoncName (\s a -> s {_jsoncName = a})

-- | A @JsonPath@ string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in <https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json Writing JsonPath Custom Classifiers> .
jsoncJSONPath :: Lens' JSONClassifier Text
jsoncJSONPath = lens _jsoncJSONPath (\s a -> s {_jsoncJSONPath = a})

instance FromJSON JSONClassifier where
  parseJSON =
    withObject
      "JSONClassifier"
      ( \x ->
          JSONClassifier'
            <$> (x .:? "CreationTime")
            <*> (x .:? "Version")
            <*> (x .:? "LastUpdated")
            <*> (x .: "Name")
            <*> (x .: "JsonPath")
      )

instance Hashable JSONClassifier

instance NFData JSONClassifier
