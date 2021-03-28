{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.CelebrityDetail
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.CelebrityDetail
  ( CelebrityDetail (..)
  -- * Smart constructor
  , mkCelebrityDetail
  -- * Lenses
  , cdBoundingBox
  , cdConfidence
  , cdFace
  , cdId
  , cdName
  , cdUrls
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types.BoundingBox as Types
import qualified Network.AWS.Rekognition.Types.FaceDetail as Types
import qualified Network.AWS.Rekognition.Types.Id as Types
import qualified Network.AWS.Rekognition.Types.Url as Types

-- | Information about a recognized celebrity.
--
-- /See:/ 'mkCelebrityDetail' smart constructor.
data CelebrityDetail = CelebrityDetail'
  { boundingBox :: Core.Maybe Types.BoundingBox
    -- ^ Bounding box around the body of a celebrity.
  , confidence :: Core.Maybe Core.Double
    -- ^ The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity. 
  , face :: Core.Maybe Types.FaceDetail
    -- ^ Face details for the recognized celebrity.
  , id :: Core.Maybe Types.Id
    -- ^ The unique identifier for the celebrity. 
  , name :: Core.Maybe Core.Text
    -- ^ The name of the celebrity.
  , urls :: Core.Maybe [Types.Url]
    -- ^ An array of URLs pointing to additional celebrity information. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CelebrityDetail' value with any optional fields omitted.
mkCelebrityDetail
    :: CelebrityDetail
mkCelebrityDetail
  = CelebrityDetail'{boundingBox = Core.Nothing,
                     confidence = Core.Nothing, face = Core.Nothing, id = Core.Nothing,
                     name = Core.Nothing, urls = Core.Nothing}

-- | Bounding box around the body of a celebrity.
--
-- /Note:/ Consider using 'boundingBox' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdBoundingBox :: Lens.Lens' CelebrityDetail (Core.Maybe Types.BoundingBox)
cdBoundingBox = Lens.field @"boundingBox"
{-# INLINEABLE cdBoundingBox #-}
{-# DEPRECATED boundingBox "Use generic-lens or generic-optics with 'boundingBox' instead"  #-}

-- | The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity. 
--
-- /Note:/ Consider using 'confidence' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdConfidence :: Lens.Lens' CelebrityDetail (Core.Maybe Core.Double)
cdConfidence = Lens.field @"confidence"
{-# INLINEABLE cdConfidence #-}
{-# DEPRECATED confidence "Use generic-lens or generic-optics with 'confidence' instead"  #-}

-- | Face details for the recognized celebrity.
--
-- /Note:/ Consider using 'face' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdFace :: Lens.Lens' CelebrityDetail (Core.Maybe Types.FaceDetail)
cdFace = Lens.field @"face"
{-# INLINEABLE cdFace #-}
{-# DEPRECATED face "Use generic-lens or generic-optics with 'face' instead"  #-}

-- | The unique identifier for the celebrity. 
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdId :: Lens.Lens' CelebrityDetail (Core.Maybe Types.Id)
cdId = Lens.field @"id"
{-# INLINEABLE cdId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

-- | The name of the celebrity.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdName :: Lens.Lens' CelebrityDetail (Core.Maybe Core.Text)
cdName = Lens.field @"name"
{-# INLINEABLE cdName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | An array of URLs pointing to additional celebrity information. 
--
-- /Note:/ Consider using 'urls' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdUrls :: Lens.Lens' CelebrityDetail (Core.Maybe [Types.Url])
cdUrls = Lens.field @"urls"
{-# INLINEABLE cdUrls #-}
{-# DEPRECATED urls "Use generic-lens or generic-optics with 'urls' instead"  #-}

instance Core.FromJSON CelebrityDetail where
        parseJSON
          = Core.withObject "CelebrityDetail" Core.$
              \ x ->
                CelebrityDetail' Core.<$>
                  (x Core..:? "BoundingBox") Core.<*> x Core..:? "Confidence"
                    Core.<*> x Core..:? "Face"
                    Core.<*> x Core..:? "Id"
                    Core.<*> x Core..:? "Name"
                    Core.<*> x Core..:? "Urls"
