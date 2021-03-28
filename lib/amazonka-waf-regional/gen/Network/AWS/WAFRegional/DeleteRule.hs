{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.DeleteRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a 'Rule' . You can't delete a @Rule@ if it's still used in any @WebACL@ objects or if it still includes any predicates, such as @ByteMatchSet@ objects.
--
-- If you just want to remove a @Rule@ from a @WebACL@ , use 'UpdateWebACL' .
-- To permanently delete a @Rule@ from AWS WAF, perform the following steps:
--
--     * Update the @Rule@ to remove predicates, if any. For more information, see 'UpdateRule' .
--
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @DeleteRule@ request.
--
--
--     * Submit a @DeleteRule@ request.
--
--
module Network.AWS.WAFRegional.DeleteRule
    (
    -- * Creating a request
      DeleteRule (..)
    , mkDeleteRule
    -- ** Request lenses
    , drRuleId
    , drChangeToken

    -- * Destructuring the response
    , DeleteRuleResponse (..)
    , mkDeleteRuleResponse
    -- ** Response lenses
    , drrrsChangeToken
    , drrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WAFRegional.Types as Types

-- | /See:/ 'mkDeleteRule' smart constructor.
data DeleteRule = DeleteRule'
  { ruleId :: Types.ResourceId
    -- ^ The @RuleId@ of the 'Rule' that you want to delete. @RuleId@ is returned by 'CreateRule' and by 'ListRules' .
  , changeToken :: Types.ChangeToken
    -- ^ The value returned by the most recent call to 'GetChangeToken' .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteRule' value with any optional fields omitted.
mkDeleteRule
    :: Types.ResourceId -- ^ 'ruleId'
    -> Types.ChangeToken -- ^ 'changeToken'
    -> DeleteRule
mkDeleteRule ruleId changeToken = DeleteRule'{ruleId, changeToken}

-- | The @RuleId@ of the 'Rule' that you want to delete. @RuleId@ is returned by 'CreateRule' and by 'ListRules' .
--
-- /Note:/ Consider using 'ruleId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drRuleId :: Lens.Lens' DeleteRule Types.ResourceId
drRuleId = Lens.field @"ruleId"
{-# INLINEABLE drRuleId #-}
{-# DEPRECATED ruleId "Use generic-lens or generic-optics with 'ruleId' instead"  #-}

-- | The value returned by the most recent call to 'GetChangeToken' .
--
-- /Note:/ Consider using 'changeToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drChangeToken :: Lens.Lens' DeleteRule Types.ChangeToken
drChangeToken = Lens.field @"changeToken"
{-# INLINEABLE drChangeToken #-}
{-# DEPRECATED changeToken "Use generic-lens or generic-optics with 'changeToken' instead"  #-}

instance Core.ToQuery DeleteRule where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteRule where
        toHeaders DeleteRule{..}
          = Core.pure ("X-Amz-Target", "AWSWAF_Regional_20161128.DeleteRule")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeleteRule where
        toJSON DeleteRule{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("RuleId" Core..= ruleId),
                  Core.Just ("ChangeToken" Core..= changeToken)])

instance Core.AWSRequest DeleteRule where
        type Rs DeleteRule = DeleteRuleResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DeleteRuleResponse' Core.<$>
                   (x Core..:? "ChangeToken") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeleteRuleResponse' smart constructor.
data DeleteRuleResponse = DeleteRuleResponse'
  { changeToken :: Core.Maybe Types.ChangeToken
    -- ^ The @ChangeToken@ that you used to submit the @DeleteRule@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteRuleResponse' value with any optional fields omitted.
mkDeleteRuleResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DeleteRuleResponse
mkDeleteRuleResponse responseStatus
  = DeleteRuleResponse'{changeToken = Core.Nothing, responseStatus}

-- | The @ChangeToken@ that you used to submit the @DeleteRule@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- /Note:/ Consider using 'changeToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drrrsChangeToken :: Lens.Lens' DeleteRuleResponse (Core.Maybe Types.ChangeToken)
drrrsChangeToken = Lens.field @"changeToken"
{-# INLINEABLE drrrsChangeToken #-}
{-# DEPRECATED changeToken "Use generic-lens or generic-optics with 'changeToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drrrsResponseStatus :: Lens.Lens' DeleteRuleResponse Core.Int
drrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE drrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
