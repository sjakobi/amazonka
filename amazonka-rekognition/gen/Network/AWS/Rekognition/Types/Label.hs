{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Label
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Label where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types.Instance
import Network.AWS.Rekognition.Types.Parent

-- | Structure containing details about the detected label, including the name, detected instances, parent labels, and level of confidence.
--
--
--
--
--
-- /See:/ 'label' smart constructor.
data Label = Label'
  { _lParents :: !(Maybe [Parent]),
    _lInstances :: !(Maybe [Instance]),
    _lName :: !(Maybe Text),
    _lConfidence :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Label' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lParents' - The parent labels for a label. The response includes all ancestor labels.
--
-- * 'lInstances' - If @Label@ represents an object, @Instances@ contains the bounding boxes for each instance of the detected object. Bounding boxes are returned for common object labels such as people, cars, furniture, apparel or pets.
--
-- * 'lName' - The name (label) of the object or scene.
--
-- * 'lConfidence' - Level of confidence.
label ::
  Label
label =
  Label'
    { _lParents = Nothing,
      _lInstances = Nothing,
      _lName = Nothing,
      _lConfidence = Nothing
    }

-- | The parent labels for a label. The response includes all ancestor labels.
lParents :: Lens' Label [Parent]
lParents = lens _lParents (\s a -> s {_lParents = a}) . _Default . _Coerce

-- | If @Label@ represents an object, @Instances@ contains the bounding boxes for each instance of the detected object. Bounding boxes are returned for common object labels such as people, cars, furniture, apparel or pets.
lInstances :: Lens' Label [Instance]
lInstances = lens _lInstances (\s a -> s {_lInstances = a}) . _Default . _Coerce

-- | The name (label) of the object or scene.
lName :: Lens' Label (Maybe Text)
lName = lens _lName (\s a -> s {_lName = a})

-- | Level of confidence.
lConfidence :: Lens' Label (Maybe Double)
lConfidence = lens _lConfidence (\s a -> s {_lConfidence = a})

instance FromJSON Label where
  parseJSON =
    withObject
      "Label"
      ( \x ->
          Label'
            <$> (x .:? "Parents" .!= mempty)
            <*> (x .:? "Instances" .!= mempty)
            <*> (x .:? "Name")
            <*> (x .:? "Confidence")
      )

instance Hashable Label

instance NFData Label
