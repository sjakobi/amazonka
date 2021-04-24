{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ProtectiveEquipmentPerson
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ProtectiveEquipmentPerson where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types.BoundingBox
import Network.AWS.Rekognition.Types.ProtectiveEquipmentBodyPart

-- | A person detected by a call to 'DetectProtectiveEquipment' . The API returns all persons detected in the input image in an array of @ProtectiveEquipmentPerson@ objects.
--
--
--
-- /See:/ 'protectiveEquipmentPerson' smart constructor.
data ProtectiveEquipmentPerson = ProtectiveEquipmentPerson'
  { _pepId ::
      !(Maybe Nat),
    _pepBoundingBox ::
      !( Maybe
           BoundingBox
       ),
    _pepBodyParts ::
      !( Maybe
           [ProtectiveEquipmentBodyPart]
       ),
    _pepConfidence ::
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

-- | Creates a value of 'ProtectiveEquipmentPerson' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pepId' - The identifier for the detected person. The identifier is only unique for a single call to @DetectProtectiveEquipment@ .
--
-- * 'pepBoundingBox' - A bounding box around the detected person.
--
-- * 'pepBodyParts' - An array of body parts detected on a person's body (including body parts without PPE).
--
-- * 'pepConfidence' - The confidence that Amazon Rekognition has that the bounding box contains a person.
protectiveEquipmentPerson ::
  ProtectiveEquipmentPerson
protectiveEquipmentPerson =
  ProtectiveEquipmentPerson'
    { _pepId = Nothing,
      _pepBoundingBox = Nothing,
      _pepBodyParts = Nothing,
      _pepConfidence = Nothing
    }

-- | The identifier for the detected person. The identifier is only unique for a single call to @DetectProtectiveEquipment@ .
pepId :: Lens' ProtectiveEquipmentPerson (Maybe Natural)
pepId = lens _pepId (\s a -> s {_pepId = a}) . mapping _Nat

-- | A bounding box around the detected person.
pepBoundingBox :: Lens' ProtectiveEquipmentPerson (Maybe BoundingBox)
pepBoundingBox = lens _pepBoundingBox (\s a -> s {_pepBoundingBox = a})

-- | An array of body parts detected on a person's body (including body parts without PPE).
pepBodyParts :: Lens' ProtectiveEquipmentPerson [ProtectiveEquipmentBodyPart]
pepBodyParts = lens _pepBodyParts (\s a -> s {_pepBodyParts = a}) . _Default . _Coerce

-- | The confidence that Amazon Rekognition has that the bounding box contains a person.
pepConfidence :: Lens' ProtectiveEquipmentPerson (Maybe Double)
pepConfidence = lens _pepConfidence (\s a -> s {_pepConfidence = a})

instance FromJSON ProtectiveEquipmentPerson where
  parseJSON =
    withObject
      "ProtectiveEquipmentPerson"
      ( \x ->
          ProtectiveEquipmentPerson'
            <$> (x .:? "Id")
            <*> (x .:? "BoundingBox")
            <*> (x .:? "BodyParts" .!= mempty)
            <*> (x .:? "Confidence")
      )

instance Hashable ProtectiveEquipmentPerson

instance NFData ProtectiveEquipmentPerson
